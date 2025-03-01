# BookTrade Database Schema Documentation

This document provides comprehensive details about the database schema for the BookTrade application. The database is designed to support a book swapping platform where users can list their books, browse others' collections, initiate trades, and maintain a history of completed swaps.

## Database Overview

The BookTrade application uses PostgreSQL via Supabase as its database, with built-in authentication and Row Level Security (RLS) for data protection. The schema consists of multiple interconnected tables that manage users, books, trades, messaging, and other essential features of the application.

## Table Structure

### Profiles

The `profiles` table extends Supabase's built-in authentication, storing additional user information.

| Column | Type | Description |
|--------|------|-------------|
| id | UUID | Primary key linked to auth.users |
| username | TEXT | Unique username for the user |
| full_name | TEXT | User's full name |
| avatar_url | TEXT | URL to the user's profile picture |
| bio | TEXT | User's biography or description |
| location | TEXT | User's general location |
| address | TEXT | User's physical address |
| phone_number | TEXT | User's contact number |
| created_at | TIMESTAMP | When the profile was created |
| updated_at | TIMESTAMP | When the profile was last updated |

### Books

The `books` table stores information about books available for trading.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| owner_id | UUID | Reference to the book owner's profile |
| title | TEXT | Book title |
| author | TEXT | Book author |
| isbn | TEXT | International Standard Book Number |
| description | TEXT | Book description |
| condition | INTEGER | Book condition rating (1-5) |
| image_url | TEXT | URL to the book cover image |
| created_at | TIMESTAMP | When the book was added |
| updated_at | TIMESTAMP | When the book was last updated |

### Genres

The `genres` table provides a categorization system for books.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| name | TEXT | Unique genre name |

### Book_Genres

The `book_genres` table manages the many-to-many relationship between books and genres.

| Column | Type | Description |
|--------|------|-------------|
| book_id | BIGINT | Reference to the book |
| genre_id | BIGINT | Reference to the genre |
| *composite primary key* | | (book_id, genre_id) |

### Trade_Requests

The `trade_requests` table manages book trade requests between users.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| requester_id | UUID | User requesting the trade |
| owner_id | UUID | Owner of the requested book |
| book_id | BIGINT | Book being requested |
| offered_book_id | BIGINT | Book offered in exchange |
| status | TEXT | Trade status (pending, accepted, declined, completed) |
| message | TEXT | Optional message from requester |
| created_at | TIMESTAMP | When the request was made |
| updated_at | TIMESTAMP | When the request was last updated |

### Completed_Swaps

The `completed_swaps` table records successful book trades.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| requester_id | UUID | User who initiated the swap |
| owner_id | UUID | Original owner of the requested book |
| requester_book_id | BIGINT | Book offered by the requester |
| owner_book_id | BIGINT | Book offered by the owner |
| trade_request_id | BIGINT | Reference to the original trade request |
| completed_at | TIMESTAMP | When the swap was completed |

### User_Ratings

The `user_ratings` table stores ratings given to users after trades.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| rater_id | UUID | User giving the rating |
| rated_user_id | UUID | User being rated |
| trade_request_id | BIGINT | Reference to the related trade |
| rating | INTEGER | Rating score (1-5) |
| comment | TEXT | Optional feedback comment |
| created_at | TIMESTAMP | When the rating was submitted |

### Book_Ratings

The `book_ratings` table stores ratings given to books by users.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| user_id | UUID | User giving the rating |
| book_id | BIGINT | Book being rated |
| rating | INTEGER | Rating score (1-5) |
| comment | TEXT | Optional review comment |
| created_at | TIMESTAMP | When the rating was submitted |
| *unique constraint* | | (user_id, book_id) |

### Wishlist_Items

The `wishlist_items` table tracks books users would like to acquire.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| user_id | UUID | User with the wishlist |
| title | TEXT | Desired book title |
| author | TEXT | Desired book author |
| isbn | TEXT | Desired book ISBN |
| created_at | TIMESTAMP | When the wishlist item was added |

### Messages

The `messages` table supports direct messaging between users.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| sender_id | UUID | User sending the message |
| recipient_id | UUID | User receiving the message |
| content | TEXT | Message content |
| read | BOOLEAN | Whether the message has been read |
| trade_request_id | BIGINT | Optional reference to a trade request |
| created_at | TIMESTAMP | When the message was sent |

### Notifications

The `notifications` table manages system notifications for users.

| Column | Type | Description |
|--------|------|-------------|
| id | BIGINT | Auto-generated primary key |
| user_id | UUID | User to notify |
| content | TEXT | Notification message |
| read | BOOLEAN | Whether the notification has been read |
| related_trade_id | BIGINT | Optional reference to a trade request |
| notification_type | TEXT | Type of notification |
| created_at | TIMESTAMP | When the notification was created |

## Entity Relationships

1. **User-Book Relationship**
   - One-to-many: A user can own multiple books, but each book has only one owner.

2. **Book-Genre Relationship**
   - Many-to-many: A book can have multiple genres, and a genre can be assigned to multiple books.

3. **Trade Request Flow**
   - User A requests a book from User B
   - User A may offer one of their books in exchange
   - User B accepts or declines the request
   - If accepted, a completed swap is recorded

4. **Rating Systems**
   - User ratings: After trades, users can rate each other
   - Book ratings: Users can rate books independent of trades

5. **Communication System**
   - Direct messaging between users
   - System notifications for trade events and other activities

## Security

All tables have Row Level Security (RLS) enabled, which allows for fine-grained access control based on the authenticated user. This ensures users can only access and modify data they are authorized to interact with.

## Future Considerations

As the application evolves, consider these potential schema enhancements:

1. Adding inventory management features for users with large book collections
2. Implementing a recommendation system based on user preferences and reading history
3. Supporting multiple images per book
4. Adding geographic proximity features for local swaps
5. Implementing a digital book loan system alongside physical book swaps 