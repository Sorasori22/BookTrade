# BookTrade Technical Implementation Guide

This document provides practical guidance for implementing the BookTrade application, including code snippets, architecture recommendations, and best practices for working with Supabase and Flutter.

## Table of Contents

1. [Project Setup](#project-setup)
2. [Supabase Integration](#supabase-integration)
3. [Authentication Implementation](#authentication-implementation)
4. [Database Access Patterns](#database-access-patterns)
5. [Row Level Security Policies](#row-level-security-policies)
6. [Common UI Components](#common-ui-components)
7. [State Management](#state-management)
8. [API Service Layer](#api-service-layer)

## Project Setup

### Flutter Project Structure

```
book_trade/
├── lib/
│   ├── api/              # API service layer
│   ├── models/           # Data models
│   ├── screens/          # UI screens
│   ├── widgets/          # Reusable UI components
│   ├── utils/            # Utility functions
│   ├── constants/        # App constants
│   ├── providers/        # State management
│   ├── routes/           # Navigation
│   ├── theme/            # App theme
│   └── main.dart         # Entry point
├── assets/               # Images, fonts, etc.
├── test/                 # Unit and widget tests
└── pubspec.yaml          # Dependencies
```

### Key Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  supabase_flutter: ^1.10.0
  flutter_riverpod: ^2.3.6
  go_router: ^10.0.0
  cached_network_image: ^3.2.3
  flutter_rating_bar: ^4.0.1
  intl: ^0.18.1
  image_picker: ^1.0.0
  flutter_chat_ui: ^1.6.9
```

## Supabase Integration

### Initialization

```dart
// lib/main.dart
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
    url: 'YOUR_SUPABASE_URL',
    anonKey: 'YOUR_SUPABASE_ANON_KEY',
  );
  
  runApp(const MyApp());
}

// Access Supabase client anywhere in the app
final supabase = Supabase.instance.client;
```

### Environment Variables

Create a `.env` file (not committed to version control) and load it with the `flutter_dotenv` package:

```dart
// .env
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-anon-key

// lib/main.dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  
  runApp(const MyApp());
}
```

## Authentication Implementation

### User Registration

```dart
// lib/api/auth_api.dart
class AuthApi {
  final SupabaseClient _supabase = Supabase.instance.client;
  
  Future<User?> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      // 1. Create the user in auth.users
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
      );
      
      if (response.user != null) {
        // 2. Create the profile record
        await _supabase.from('profiles').insert({
          'id': response.user!.id,
          'username': username,
          'created_at': DateTime.now().toIso8601String(),
          'updated_at': DateTime.now().toIso8601String(),
        });
      }
      
      return response.user;
    } catch (e) {
      rethrow;
    }
  }
}
```

### User Login

```dart
Future<User?> signIn({
  required String email,
  required String password,
}) async {
  try {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return response.user;
  } catch (e) {
    rethrow;
  }
}
```

### Social Authentication

```dart
Future<void> signInWithGoogle() async {
  try {
    await _supabase.auth.signInWithOAuth(
      Provider.google,
      redirectTo: 'io.supabase.booktrade://login-callback/',
    );
  } catch (e) {
    rethrow;
  }
}
```

### Auth State Listener

```dart
// lib/providers/auth_provider.dart
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState.initial()) {
    _initialize();
  }

  void _initialize() {
    // Check if user is already authenticated
    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      state = AuthState.authenticated(session.user);
      _loadUserProfile(session.user.id);
    } else {
      state = const AuthState.unauthenticated();
    }

    // Listen for auth changes
    Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      final Session? session = data.session;

      switch (event) {
        case AuthChangeEvent.signedIn:
          if (session != null) {
            state = AuthState.authenticated(session.user);
            _loadUserProfile(session.user.id);
          }
          break;
        case AuthChangeEvent.signedOut:
          state = const AuthState.unauthenticated();
          break;
        default:
          break;
      }
    });
  }

  Future<void> _loadUserProfile(String userId) async {
    try {
      final data = await Supabase.instance.client
          .from('profiles')
          .select()
          .eq('id', userId)
          .single();
      
      state = AuthState.profileLoaded(state.user!, Profile.fromJson(data));
    } catch (e) {
      // Handle error
    }
  }
}
```

## Database Access Patterns

### Data Models

```dart
// lib/models/book.dart
class Book {
  final int id;
  final String ownerId;
  final String title;
  final String author;
  final String? isbn;
  final String? description;
  final int condition;
  final String? imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Genre> genres;

  Book({
    required this.id,
    required this.ownerId,
    required this.title,
    required this.author,
    this.isbn,
    this.description,
    required this.condition,
    this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
    this.genres = const [],
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      ownerId: json['owner_id'],
      title: json['title'],
      author: json['author'],
      isbn: json['isbn'],
      description: json['description'],
      condition: json['condition'],
      imageUrl: json['image_url'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      genres: json['genres'] != null
          ? (json['genres'] as List).map((g) => Genre.fromJson(g)).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'owner_id': ownerId,
      'title': title,
      'author': author,
      'isbn': isbn,
      'description': description,
      'condition': condition,
      'image_url': imageUrl,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
```

### Repository Pattern

```dart
// lib/api/books_api.dart
class BooksApi {
  final SupabaseClient _supabase = Supabase.instance.client;

  // Get books with genres
  Future<List<Book>> getBooks({int limit = 20, int offset = 0}) async {
    try {
      // First get books
      final booksData = await _supabase
          .from('books')
          .select()
          .order('created_at', ascending: false)
          .range(offset, offset + limit - 1);

      final List<Book> books = [];
      
      // For each book, get its genres
      for (final bookData in booksData) {
        final genresData = await _supabase
            .from('book_genres')
            .select('genres(*)')
            .eq('book_id', bookData['id']);

        final List<Genre> genres = [];
        for (final genreData in genresData) {
          genres.add(Genre.fromJson(genreData['genres']));
        }

        final book = Book.fromJson(bookData);
        books.add(book.copyWith(genres: genres));
      }

      return books;
    } catch (e) {
      rethrow;
    }
  }

  // Create a book with genres
  Future<Book> createBook({
    required String title,
    required String author,
    required int condition,
    String? isbn,
    String? description,
    String? imageUrl,
    List<int> genreIds = const [],
  }) async {
    try {
      // 1. Insert the book
      final bookData = await _supabase.from('books').insert({
        'owner_id': _supabase.auth.currentUser!.id,
        'title': title,
        'author': author,
        'isbn': isbn,
        'description': description,
        'condition': condition,
        'image_url': imageUrl,
        'created_at': DateTime.now().toIso8601String(),
        'updated_at': DateTime.now().toIso8601String(),
      }).select().single();

      // 2. Insert book-genre relationships
      if (genreIds.isNotEmpty) {
        final bookGenres = genreIds.map((genreId) => {
          'book_id': bookData['id'],
          'genre_id': genreId,
        }).toList();

        await _supabase.from('book_genres').insert(bookGenres);
      }

      // 3. Get the genres for the book
      final genresData = await _supabase
          .from('book_genres')
          .select('genres(*)')
          .eq('book_id', bookData['id']);

      final List<Genre> genres = [];
      for (final genreData in genresData) {
        genres.add(Genre.fromJson(genreData['genres']));
      }

      // 4. Return the complete book with genres
      final book = Book.fromJson(bookData);
      return book.copyWith(genres: genres);
    } catch (e) {
      rethrow;
    }
  }
}
```

## Row Level Security Policies

Here are examples of RLS policies you should implement in Supabase:

### Profiles Table

```sql
-- Allow users to view any profile
CREATE POLICY "profiles: Select policy" ON profiles
FOR SELECT USING (true);

-- Allow users to update only their own profile
CREATE POLICY "profiles: Update policy" ON profiles
FOR UPDATE USING (auth.uid() = id);

-- Allow users to insert their own profile
CREATE POLICY "profiles: Insert policy" ON profiles
FOR INSERT WITH CHECK (auth.uid() = id);
```

### Books Table

```sql
-- Anyone can view books
CREATE POLICY "books: Select policy" ON books
FOR SELECT USING (true);

-- Only the owner can update their books
CREATE POLICY "books: Update policy" ON books
FOR UPDATE USING (auth.uid() = owner_id);

-- Only authenticated users can insert books
CREATE POLICY "books: Insert policy" ON books
FOR INSERT TO authenticated WITH CHECK (auth.uid() = owner_id);

-- Only the owner can delete their books
CREATE POLICY "books: Delete policy" ON books
FOR DELETE USING (auth.uid() = owner_id);
```

### Trade Requests Table

```sql
-- Users can view trade requests they're involved in
CREATE POLICY "trade_requests: Select policy" ON trade_requests
FOR SELECT USING (
  auth.uid() = requester_id OR 
  auth.uid() = owner_id
);

-- Only the requester can create trade requests
CREATE POLICY "trade_requests: Insert policy" ON trade_requests
FOR INSERT TO authenticated WITH CHECK (auth.uid() = requester_id);

-- Only the owner can update trade requests (to accept/decline)
CREATE POLICY "trade_requests: Update policy" ON trade_requests
FOR UPDATE USING (auth.uid() = owner_id);
```

## Common UI Components

### Book Card Widget

```dart
// lib/widgets/book_card.dart
class BookCard extends StatelessWidget {
  final Book book;
  final VoidCallback? onTap;

  const BookCard({
    Key? key,
    required this.book,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book cover image
            AspectRatio(
              aspectRatio: 2 / 3,
              child: book.imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: book.imageUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => const Center(
                        child: Icon(Icons.error),
                      ),
                    )
                  : Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(Icons.book, size: 48),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    book.author,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        'Condition: ${book.condition}/5',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

### Rating Input Widget

```dart
// lib/widgets/rating_input.dart
class RatingInput extends StatelessWidget {
  final double initialRating;
  final ValueChanged<double> onRatingChanged;
  final String? labelText;

  const RatingInput({
    Key? key,
    this.initialRating = 0,
    required this.onRatingChanged,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
        ],
        RatingBar.builder(
          initialRating: initialRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          itemSize: 36,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: onRatingChanged,
        ),
      ],
    );
  }
}
```

## State Management

Using Riverpod for state management:

```dart
// lib/providers/books_provider.dart
final booksProvider = StateNotifierProvider<BooksNotifier, AsyncValue<List<Book>>>((ref) {
  return BooksNotifier(ref.read(booksApiProvider));
});

class BooksNotifier extends StateNotifier<AsyncValue<List<Book>>> {
  final BooksApi _booksApi;
  
  BooksNotifier(this._booksApi) : super(const AsyncValue.loading()) {
    loadBooks();
  }
  
  Future<void> loadBooks() async {
    try {
      state = const AsyncValue.loading();
      final books = await _booksApi.getBooks();
      state = AsyncValue.data(books);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
  
  Future<void> addBook(Book book) async {
    try {
      final newBook = await _booksApi.createBook(
        title: book.title,
        author: book.author,
        condition: book.condition,
        isbn: book.isbn,
        description: book.description,
        imageUrl: book.imageUrl,
        genreIds: book.genres.map((g) => g.id).toList(),
      );
      
      state.whenData((books) {
        state = AsyncValue.data([newBook, ...books]);
      });
    } catch (e, stackTrace) {
      // Handle error
    }
  }
}
```

## API Service Layer

Create a service layer to handle all Supabase interactions:

```dart
// lib/api/api_client.dart
class ApiClient {
  final SupabaseClient _supabase = Supabase.instance.client;
  
  // Authentication
  AuthApi get auth => AuthApi(_supabase);
  
  // Books
  BooksApi get books => BooksApi(_supabase);
  
  // Profiles
  ProfilesApi get profiles => ProfilesApi(_supabase);
  
  // Trade Requests
  TradeRequestsApi get tradeRequests => TradeRequestsApi(_supabase);
  
  // Messages
  MessagesApi get messages => MessagesApi(_supabase);
  
  // Notifications
  NotificationsApi get notifications => NotificationsApi(_supabase);
}

// Register as a provider
final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

// Individual API providers
final authApiProvider = Provider<AuthApi>((ref) {
  return ref.read(apiClientProvider).auth;
});

final booksApiProvider = Provider<BooksApi>((ref) {
  return ref.read(apiClientProvider).books;
});

// ... other API providers
```

This technical implementation guide provides a solid foundation for developing the BookTrade application. By following these patterns and examples, you can ensure a consistent, maintainable codebase that aligns with the database schema and application flows. 