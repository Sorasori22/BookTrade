# Book Swap

## Overview
Book Swap is a platform where people can easily exchange books. The idea is to reduce waste, help people save money, and build a community around sharing. This project provides tools to list books, search for books, and connect with others who want to swap. By promoting an eco-friendly way to exchange items, the platform encourages sustainability and brings like-minded people together.

## Background
People are becoming more aware of the need to live sustainably and reduce waste. However, most online platforms focus on selling or donating items. Swapping is often overlooked, even though it's a great way to save money and reduce waste. Books are perfect for swapping because many people have books they've already read and don't need anymore. Book Swap fills this gap by creating a simple, dedicated space for swapping books.

## Problem Statement
Many people have books they no longer use, but finding an effective way to exchange them with others can be challenging. Existing platforms often focus on selling or donating items, which may not satisfy the desire for a mutual exchange of value. Without a proper platform, these books are often left unused, leading to waste and missed opportunities to share resources.

## Solution
Book Swap addresses these issues by providing a simple, dedicated space for people to trade books. It helps users save money by offering a way to refresh their book collections without purchasing new ones. Furthermore, the platform promotes sustainability by encouraging the reuse of books, reducing the demand for new productions. In addition, it fosters a community of like-minded individuals who value environmental responsibility and the joy of reading.

## Features
- User account creation and personalized profiles
- Book listing functionality with options to upload book details and images
- Search and filter features for finding books by title, author, genre, and more
- A secure messaging system for user communication
- Swap history tracking for easy reference
- Book and user rating systems
- Wishlist functionality for desired books
- Real-time notifications

## Technical Specifications
- **Operating System**: Hybrid
- **Technology**: Flutter Cross Platform Development
- **Development Tools**: VSCode
- **Database**: Supabase PostgreSQL with the following key components:
  - User profiles linked to Supabase authentication
  - Book catalog with condition ratings and genre classifications
  - Trade request and completion tracking system
  - Messaging system for user communication
  - Rating system for both users and books
  - Notification system for platform activities
- **Authentication**: Supabase Auth with JWT tokens
- **Storage**: Supabase Storage for book images and user avatars
- **Security**: Row Level Security (RLS) policies for data protection
- **Design Tools**: Figma

## Database Architecture
The application uses a relational database model with the following core tables:
- **profiles**: Extends Supabase auth with additional user information
- **books**: Stores book details including condition and ownership
- **genres**: Categorizes books by literary genres
- **trade_requests**: Manages the book swap proposal process
- **completed_swaps**: Records successful book exchanges
- **messages**: Supports direct communication between users
- **notifications**: Provides system alerts for platform activities

For a detailed breakdown of the database schema, please refer to [Database Schema Documentation](./database_schema.md).

## Benefits
- **Sustainability**: Promotes eco-friendly practices by reusing books
- **Cost Savings**: Helps users save money by avoiding purchases
- **Community Engagement**: Builds a community of readers and environmentalists
- **Convenience**: Provides an intuitive and seamless swapping experience

## Constraints
- Initial user adoption may require marketing efforts
- Dependence on internet connectivity for accessing the platform

## Resources
- [Swapi Books Mobile App Case Study](https://medium.com/@oscar7490/swapi-books-mobile-app-case-study-113b19caefdd)
- [What is the Cost of Developing a Book Store App](https://www.appsrhino.com/blogs/what-is-the-cost-of-developing-a-book-store-app)