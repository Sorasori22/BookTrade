# BookTrade Application Flows

This document outlines the key user flows and processes in the BookTrade application. These flow diagrams provide a visual reference to help streamline development and ensure consistent implementation of core features.

## Table of Contents

1. [User Authentication Flow](#user-authentication-flow)
2. [Book Management Flow](#book-management-flow)
3. [Book Trade Process](#book-trade-process)
4. [Messaging System Flow](#messaging-system-flow)
5. [Rating and Review Flow](#rating-and-review-flow)
6. [Notification System Flow](#notification-system-flow)
7. [Data Relationships Diagram](#data-relationships-diagram)

## User Authentication Flow

```mermaid
flowchart TD
    A[User Opens App] --> B{Has Account?}
    B -->|No| C[Sign Up]
    B -->|Yes| D[Login]
    C --> E[Enter Email/Password]
    C --> F[Social Auth]
    E --> G[Create Profile]
    F --> G
    G --> H[Set Username]
    G --> I[Add Profile Details]
    G --> J[Set Preferences]
    D --> K[Enter Credentials]
    D --> L[Social Login]
    K --> M[Validate]
    L --> M
    M -->|Invalid| N[Show Error]
    N --> K
    M -->|Valid| O[Generate JWT]
    O --> P[Access App]
    H --> P
    I --> P
    J --> P
```

## Book Management Flow

```mermaid
flowchart TD
    A[User Dashboard] --> B[My Books]
    A --> C[Add New Book]
    
    B --> D[View Book List]
    D --> E[Edit Book]
    D --> F[Remove Book]
    D --> G[View Book Details]
    
    C --> H[Enter Book Details]
    H --> I[Add Title/Author]
    H --> J[Select Condition]
    H --> K[Add Description]
    H --> L[Upload Image]
    H --> M[Select Genres]
    
    I & J & K & L & M --> N[Save Book]
    N --> O{Validation}
    O -->|Invalid| P[Show Errors]
    P --> H
    O -->|Valid| Q[Store in Database]
    Q --> R[Update User's Book List]
    R --> B
    
    E --> S[Edit Form]
    S --> T[Update Book]
    T --> Q
    
    F --> U[Confirm Deletion]
    U -->|Cancel| D
    U -->|Confirm| V[Remove from Database]
    V --> R
```

## Book Trade Process

```mermaid
flowchart TD
    A[Browse Books] --> B[View Book Details]
    B --> C[Click Swap]
    
    C --> F[Submit Request]
    F --> G[Store Trade Request]
    G --> H[Notify Book Owner]
    
    H --> I{Owner Decision}
    I -->|Accept| J[Create Message Thread]
    I -->|Decline| K[Update Trade Status]
    
    J --> L[Notify Requester]
    J --> M[Enable Book Offering]
    
    M --> N[Attach Book to Offer]
    N --> O[Discuss Trade Details]
    O --> P{Both Agree?}
    
    P -->|Yes| Q[Complete Trade]
    P -->|No| O
    P -->|Cancel| R[Cancel Trade]
    
    Q --> S[Update Book Ownership]
    S --> T[Create Completed Swap]
    T --> U[Enable Ratings]
    
    U --> V[Rate Trade Experience]
    V --> W[Submit User Rating]
    V --> X[Submit Book Rating]
    W & X --> Y[Update Ratings in DB]
    
    K --> Z[Notify Requester]
    R --> Z
    
    Y --> AA[Trade Complete]
```

## Messaging System Flow

```mermaid
flowchart TD
    A[User Dashboard] --> B[Messages]
    B --> C[Conversation List]
    C --> D[Select Conversation]
    
    D --> E[View Message History]
    E --> F[Send New Message]
    
    F --> G[Enter Message]
    G --> H[Submit]
    
    H --> I[Store in Database]
    I --> J[Update Conversation]
    J --> K[Mark as Unread for Recipient]
    K --> L[Send Notification]
    
    L --> M[Recipient Views Message]
    M --> N[Mark as Read]
    N --> O[Update Database]
    
    A --> P[New Trade Request]
    P --> Q[Auto-Create Conversation]
    Q --> R[System Message]
    R --> I
    
    A --> S[Start New Conversation]
    S --> T[Select User]
    T --> U[Create Conversation]
    U --> G
```

## Rating and Review Flow

```mermaid
flowchart TD
    A[Trade Completed] --> B[Rate User]
    A --> C[Rate Book]
    
    B --> D[Select Rating 1-5]
    D --> E[Add Comment]
    E --> F[Submit User Rating]
    
    C --> G[Select Rating 1-5]
    G --> H[Add Review]
    H --> I[Submit Book Rating]
    
    F --> J[Store User Rating]
    J --> K[Update User Profile]
    K --> L[Notify Rated User]
    
    I --> M[Store Book Rating]
    M --> N[Update Book Details]
    N --> O[Update Average Rating]
    
    L & O --> P[Ratings Complete]
    
    Q[View Book] --> R[See Book Ratings]
    S[View Profile] --> T[See User Ratings]
```

## Notification System Flow

```mermaid
flowchart TD
    A[System Event] --> B{Event Type}
    
    B -->|New Trade Request| C[Create Trade Request Notification]
    B -->|Trade Accepted| D[Create Trade Accepted Notification]
    B -->|Trade Declined| E[Create Trade Declined Notification]
    B -->|New Message| F[Create Message Notification]
    B -->|New Rating| G[Create Rating Notification]
    
    C & D & E & F & G --> H[Store in Database]
    H --> I[Mark as Unread]
    I --> J[Push to User Device]
    
    K[User Opens App] --> L[Fetch Notifications]
    L --> M[Display Notification Count]
    M --> N[User Views Notifications]
    N --> O[Mark as Read]
    O --> P[Update Database]
    
    N --> Q{Notification Type}
    Q -->|Trade| R[Navigate to Trade]
    Q -->|Message| S[Navigate to Conversation]
    Q -->|Rating| T[Navigate to Profile]
```

## Data Relationships Diagram

```mermaid
erDiagram
    PROFILES ||--o{ BOOKS : owns
    PROFILES ||--o{ TRADE_REQUESTS : requests
    PROFILES ||--o{ TRADE_REQUESTS : receives
    PROFILES ||--o{ USER_RATINGS : rates
    PROFILES ||--o{ USER_RATINGS : rated_by
    PROFILES ||--o{ BOOK_RATINGS : rates
    PROFILES ||--o{ WISHLIST_ITEMS : wants
    PROFILES ||--o{ MESSAGES : sends
    PROFILES ||--o{ MESSAGES : receives
    PROFILES ||--o{ NOTIFICATIONS : receives
    PROFILES ||--o{ COMPLETED_SWAPS : participates
    
    BOOKS ||--o{ BOOK_GENRES : categorized_as
    BOOKS ||--o{ BOOK_RATINGS : rated_in
    BOOKS ||--o{ TRADE_REQUESTS : requested_in
    BOOKS ||--o{ TRADE_REQUESTS : offered_in
    BOOKS ||--o{ COMPLETED_SWAPS : swapped_in
    
    GENRES ||--o{ BOOK_GENRES : used_in
    
    TRADE_REQUESTS ||--o{ MESSAGES : related_to
    TRADE_REQUESTS ||--o{ NOTIFICATIONS : generates
    TRADE_REQUESTS ||--o{ USER_RATINGS : rated_for
    TRADE_REQUESTS ||--o{ COMPLETED_SWAPS : completed_as
    
    PROFILES {
        UUID id PK
        TEXT username
        TEXT full_name
        TEXT avatar_url
        TEXT bio
        TEXT location
        TEXT address
        TEXT phone_number
    }
    
    BOOKS {
        BIGINT id PK
        UUID owner_id FK
        TEXT title
        TEXT author
        TEXT isbn
        TEXT description
        INTEGER condition
        TEXT image_url
    }
    
    GENRES {
        BIGINT id PK
        TEXT name
    }
    
    BOOK_GENRES {
        BIGINT book_id PK,FK
        BIGINT genre_id PK,FK
    }
    
    TRADE_REQUESTS {
        BIGINT id PK
        UUID requester_id FK
        UUID owner_id FK
        BIGINT book_id FK
        BIGINT offered_book_id FK
        TEXT status
        TEXT message
    }
    
    COMPLETED_SWAPS {
        BIGINT id PK
        UUID requester_id FK
        UUID owner_id FK
        BIGINT requester_book_id FK
        BIGINT owner_book_id FK
        BIGINT trade_request_id FK
    }
    
    USER_RATINGS {
        BIGINT id PK
        UUID rater_id FK
        UUID rated_user_id FK
        BIGINT trade_request_id FK
        INTEGER rating
        TEXT comment
    }
    
    BOOK_RATINGS {
        BIGINT id PK
        UUID user_id FK
        BIGINT book_id FK
        INTEGER rating
        TEXT comment
    }
    
    MESSAGES {
        BIGINT id PK
        UUID sender_id FK
        UUID recipient_id FK
        TEXT content
        BOOLEAN read
        BIGINT trade_request_id FK
    }
    
    NOTIFICATIONS {
        BIGINT id PK
        UUID user_id FK
        TEXT content
        BOOLEAN read
        BIGINT related_trade_id FK
        TEXT notification_type
    }
    
    WISHLIST_ITEMS {
        BIGINT id PK
        UUID user_id FK
        TEXT title
        TEXT author
        TEXT isbn
    }
```

## Development Sequence Recommendation

For efficient development, consider implementing features in this order:

1. **Authentication & User Profiles**
   - Basic login/registration
   - Profile creation and management

2. **Book Management**
   - Book listing and details
   - Genre categorization

3. **Book Discovery**
   - Search and browse functionality
   - Filtering options

4. **Trade System**
   - Trade request creation
   - Trade acceptance/rejection
   - Completed swap recording

5. **Messaging System**
   - Direct messaging
   - Trade-related communication

6. **Rating System**
   - User ratings
   - Book ratings

7. **Notification System**
   - Trade notifications
   - Message alerts
   - System announcements

This sequence allows for incremental testing and ensures that core functionality is in place before building dependent features. 