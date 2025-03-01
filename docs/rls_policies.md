# BookTrade Row Level Security (RLS) Policies

This document provides the SQL statements needed to implement Row Level Security (RLS) policies for all tables in the BookTrade application. These policies ensure that users can only access and modify data they are authorized to interact with.

## Table of Contents

1. [Introduction to RLS](#introduction-to-rls)
2. [Profiles Table Policies](#profiles-table-policies)
3. [Books Table Policies](#books-table-policies)
4. [Genres Table Policies](#genres-table-policies)
5. [Book Genres Table Policies](#book-genres-table-policies)
6. [Trade Requests Table Policies](#trade-requests-table-policies)
7. [Completed Swaps Table Policies](#completed-swaps-table-policies)
8. [User Ratings Table Policies](#user-ratings-table-policies)
9. [Book Ratings Table Policies](#book-ratings-table-policies)
10. [Wishlist Items Table Policies](#wishlist-items-table-policies)
11. [Messages Table Policies](#messages-table-policies)
12. [Notifications Table Policies](#notifications-table-policies)
13. [Testing RLS Policies](#testing-rls-policies)

## Introduction to RLS

Row Level Security (RLS) in PostgreSQL allows you to define security policies that restrict which rows users can access or modify. In Supabase, RLS is enabled by default for all tables, but no policies are created automatically, meaning no access is granted until you define specific policies.

Each policy consists of:
- A name
- The table it applies to
- The operation it controls (SELECT, INSERT, UPDATE, DELETE)
- The roles it applies to (authenticated, anon, or specific roles)
- A USING expression (for SELECT, UPDATE, DELETE) that filters rows
- A WITH CHECK expression (for INSERT, UPDATE) that validates new data

## Profiles Table Policies

```sql
-- Allow users to view any profile (public information)
CREATE POLICY "profiles: Select policy" ON profiles
FOR SELECT USING (true);

-- Allow users to update only their own profile
CREATE POLICY "profiles: Update policy" ON profiles
FOR UPDATE USING (auth.uid() = id);

-- Allow users to insert their own profile
CREATE POLICY "profiles: Insert policy" ON profiles
FOR INSERT WITH CHECK (auth.uid() = id);

-- Users cannot delete profiles (handled by Supabase Auth)
```

## Books Table Policies

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

## Genres Table Policies

```sql
-- Anyone can view genres
CREATE POLICY "genres: Select policy" ON genres
FOR SELECT USING (true);

-- Only administrators can insert, update, or delete genres
-- For now, we'll allow authenticated users to insert genres
CREATE POLICY "genres: Insert policy" ON genres
FOR INSERT TO authenticated WITH CHECK (true);

-- No update or delete policies for regular users
```

## Book Genres Table Policies

```sql
-- Anyone can view book-genre relationships
CREATE POLICY "book_genres: Select policy" ON book_genres
FOR SELECT USING (true);

-- Only the book owner can add genres to their books
CREATE POLICY "book_genres: Insert policy" ON book_genres
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() = (
    SELECT owner_id FROM books WHERE id = book_id
  )
);

-- Only the book owner can remove genres from their books
CREATE POLICY "book_genres: Delete policy" ON book_genres
FOR DELETE USING (
  auth.uid() = (
    SELECT owner_id FROM books WHERE id = book_id
  )
);
```

## Trade Requests Table Policies

```sql
-- Users can view trade requests they're involved in
CREATE POLICY "trade_requests: Select policy" ON trade_requests
FOR SELECT USING (
  auth.uid() = requester_id OR 
  auth.uid() = owner_id
);

-- Only authenticated users can create trade requests
CREATE POLICY "trade_requests: Insert policy" ON trade_requests
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() = requester_id AND
  auth.uid() != owner_id AND
  (
    -- Ensure the offered book belongs to the requester
    offered_book_id IS NULL OR
    auth.uid() = (
      SELECT owner_id FROM books WHERE id = offered_book_id
    )
  )
);

-- Requester can update their own request (e.g., to change message or offered book)
CREATE POLICY "trade_requests: Requester update policy" ON trade_requests
FOR UPDATE TO authenticated USING (
  auth.uid() = requester_id AND
  status = 'pending'
) WITH CHECK (
  auth.uid() = requester_id AND
  status = 'pending' AND
  (
    -- Ensure the offered book belongs to the requester
    offered_book_id IS NULL OR
    auth.uid() = (
      SELECT owner_id FROM books WHERE id = offered_book_id
    )
  )
);

-- Owner can update status (accept/decline)
CREATE POLICY "trade_requests: Owner update policy" ON trade_requests
FOR UPDATE TO authenticated USING (
  auth.uid() = owner_id
) WITH CHECK (
  auth.uid() = owner_id AND
  (status = 'accepted' OR status = 'declined' OR status = 'completed')
);

-- Requester can delete their pending request
CREATE POLICY "trade_requests: Delete policy" ON trade_requests
FOR DELETE USING (
  auth.uid() = requester_id AND
  status = 'pending'
);
```

## Completed Swaps Table Policies

```sql
-- Users can view completed swaps they're involved in
CREATE POLICY "completed_swaps: Select policy" ON completed_swaps
FOR SELECT USING (
  auth.uid() = requester_id OR 
  auth.uid() = owner_id
);

-- Only authenticated users can insert completed swaps
-- (typically done by a function when a trade is accepted)
CREATE POLICY "completed_swaps: Insert policy" ON completed_swaps
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() IN (requester_id, owner_id) AND
  (
    -- Verify the requester owns the requester_book
    requester_id = (
      SELECT owner_id FROM books WHERE id = requester_book_id
    ) AND
    -- Verify the owner owns the owner_book
    owner_id = (
      SELECT owner_id FROM books WHERE id = owner_book_id
    )
  )
);

-- No update or delete policies for completed swaps
```

## User Ratings Table Policies

```sql
-- Anyone can view user ratings
CREATE POLICY "user_ratings: Select policy" ON user_ratings
FOR SELECT USING (true);

-- Only authenticated users can insert ratings
CREATE POLICY "user_ratings: Insert policy" ON user_ratings
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() = rater_id AND
  auth.uid() != rated_user_id AND
  (
    -- Verify the rater was involved in the trade
    trade_request_id IS NULL OR
    auth.uid() IN (
      SELECT requester_id FROM trade_requests WHERE id = trade_request_id
      UNION
      SELECT owner_id FROM trade_requests WHERE id = trade_request_id
    )
  )
);

-- Users can update their own ratings
CREATE POLICY "user_ratings: Update policy" ON user_ratings
FOR UPDATE USING (
  auth.uid() = rater_id
);

-- Users can delete their own ratings
CREATE POLICY "user_ratings: Delete policy" ON user_ratings
FOR DELETE USING (
  auth.uid() = rater_id
);
```

## Book Ratings Table Policies

```sql
-- Anyone can view book ratings
CREATE POLICY "book_ratings: Select policy" ON book_ratings
FOR SELECT USING (true);

-- Only authenticated users can insert book ratings
CREATE POLICY "book_ratings: Insert policy" ON book_ratings
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() = user_id
);

-- Users can update their own book ratings
CREATE POLICY "book_ratings: Update policy" ON book_ratings
FOR UPDATE USING (
  auth.uid() = user_id
);

-- Users can delete their own book ratings
CREATE POLICY "book_ratings: Delete policy" ON book_ratings
FOR DELETE USING (
  auth.uid() = user_id
);
```

## Wishlist Items Table Policies

```sql
-- Users can view their own wishlist items
CREATE POLICY "wishlist_items: Select policy" ON wishlist_items
FOR SELECT USING (
  auth.uid() = user_id
);

-- Only authenticated users can insert wishlist items
CREATE POLICY "wishlist_items: Insert policy" ON wishlist_items
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() = user_id
);

-- Users can update their own wishlist items
CREATE POLICY "wishlist_items: Update policy" ON wishlist_items
FOR UPDATE USING (
  auth.uid() = user_id
);

-- Users can delete their own wishlist items
CREATE POLICY "wishlist_items: Delete policy" ON wishlist_items
FOR DELETE USING (
  auth.uid() = user_id
);
```

## Messages Table Policies

```sql
-- Users can view messages they've sent or received
CREATE POLICY "messages: Select policy" ON messages
FOR SELECT USING (
  auth.uid() = sender_id OR 
  auth.uid() = recipient_id
);

-- Only authenticated users can send messages
CREATE POLICY "messages: Insert policy" ON messages
FOR INSERT TO authenticated WITH CHECK (
  auth.uid() = sender_id
);

-- Recipients can update messages (to mark as read)
CREATE POLICY "messages: Update policy" ON messages
FOR UPDATE USING (
  auth.uid() = recipient_id
) WITH CHECK (
  -- Only allow updating the 'read' field
  auth.uid() = recipient_id AND
  content = OLD.content AND
  sender_id = OLD.sender_id AND
  recipient_id = OLD.recipient_id AND
  trade_request_id IS NOT DISTINCT FROM OLD.trade_request_id
);

-- Users can delete messages they've sent or received
CREATE POLICY "messages: Delete policy" ON messages
FOR DELETE USING (
  auth.uid() IN (sender_id, recipient_id)
);
```

## Notifications Table Policies

```sql
-- Users can view their own notifications
CREATE POLICY "notifications: Select policy" ON notifications
FOR SELECT USING (
  auth.uid() = user_id
);

-- System can insert notifications for any user
-- (typically done by a function or trigger)
CREATE POLICY "notifications: Insert policy" ON notifications
FOR INSERT TO authenticated WITH CHECK (true);

-- Users can update their own notifications (to mark as read)
CREATE POLICY "notifications: Update policy" ON notifications
FOR UPDATE USING (
  auth.uid() = user_id
) WITH CHECK (
  -- Only allow updating the 'read' field
  auth.uid() = user_id AND
  content = OLD.content AND
  user_id = OLD.user_id AND
  related_trade_id IS NOT DISTINCT FROM OLD.related_trade_id AND
  notification_type = OLD.notification_type
);

-- Users can delete their own notifications
CREATE POLICY "notifications: Delete policy" ON notifications
FOR DELETE USING (
  auth.uid() = user_id
);
```

## Testing RLS Policies

To test your RLS policies, you can use the Supabase SQL Editor or the API with different user tokens. Here's a basic approach:

1. **Create test users** with different roles and permissions
2. **Generate JWT tokens** for each test user
3. **Make API requests** with each token to verify access control
4. **Check edge cases** like:
   - Users trying to access other users' data
   - Users trying to modify data they don't own
   - Anonymous vs. authenticated access

### Example SQL Test

```sql
-- Test as a specific user (replace with actual UUID)
SET LOCAL ROLE authenticated;
SET LOCAL request.jwt.claim.sub = '00000000-0000-0000-0000-000000000000';

-- Try to select data
SELECT * FROM books;

-- Try to insert data
INSERT INTO books (owner_id, title, author, condition) 
VALUES ('00000000-0000-0000-0000-000000000001', 'Test Book', 'Test Author', 5);
-- Should fail if owner_id doesn't match auth.uid()

-- Reset role
RESET ROLE;
RESET request.jwt.claim.sub;
```

### Automated Testing

Consider creating a test suite that:
1. Creates test data
2. Attempts various operations as different users
3. Verifies the results match expected permissions

This ensures your RLS policies continue to work correctly as your application evolves. 