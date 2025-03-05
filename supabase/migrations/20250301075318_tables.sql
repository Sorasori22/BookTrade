-- BookTrade Application Tables
-- This migration creates the core tables for the BookTrade application

-- Users table linked to Supabase auth
CREATE TABLE public.profiles (
  id UUID REFERENCES auth.users(id) PRIMARY KEY,
  username TEXT UNIQUE NOT NULL,
  email TEXT UNIQUE NOT NULL,
  fullname TEXT,
  avatar_url TEXT,
  bio TEXT,
  age INTEGER,
  location TEXT,
  address TEXT,
  phone_number TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Books table to store book information
CREATE TABLE public.books (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  owner_id UUID REFERENCES public.profiles(id) NOT NULL,
  title TEXT NOT NULL,
  author TEXT NOT NULL,
  description TEXT,
  image_url TEXT,
  condition INTEGER NOT NULL CHECK (condition BETWEEN 1 AND 5),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.books ENABLE ROW LEVEL SECURITY;

-- Book genres for categorization
CREATE TABLE public.genres (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

-- Enable RLS
ALTER TABLE public.genres ENABLE ROW LEVEL SECURITY;

-- Many-to-many relationship between books and genres
CREATE TABLE public.book_genres (
  book_id BIGINT REFERENCES public.books(id) ON DELETE CASCADE,
  genre_id BIGINT REFERENCES public.genres(id) ON DELETE CASCADE,
  PRIMARY KEY (book_id, genre_id)
);

-- Enable RLS
ALTER TABLE public.book_genres ENABLE ROW LEVEL SECURITY;

-- Trade requests table
CREATE TABLE public.trade_requests (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  requester_id UUID REFERENCES public.profiles(id) NOT NULL,
  owner_id UUID REFERENCES public.profiles(id) NOT NULL,
  book_id BIGINT REFERENCES public.books(id) NOT NULL,
  offered_book_id BIGINT REFERENCES public.books(id),
  status TEXT NOT NULL DEFAULT 'pending',
  message TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.trade_requests ENABLE ROW LEVEL SECURITY;

-- Completed swaps table to track swap history
CREATE TABLE public.completed_swaps (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  requester_id UUID REFERENCES public.profiles(id) NOT NULL,
  owner_id UUID REFERENCES public.profiles(id) NOT NULL,
  requester_book_id BIGINT REFERENCES public.books(id) NOT NULL,
  owner_book_id BIGINT REFERENCES public.books(id) NOT NULL,
  trade_request_id BIGINT REFERENCES public.trade_requests(id),
  completed_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.completed_swaps ENABLE ROW LEVEL SECURITY;

-- User ratings after trades
CREATE TABLE public.user_ratings (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  rater_id UUID REFERENCES public.profiles(id) NOT NULL,
  rated_user_id UUID REFERENCES public.profiles(id) NOT NULL,
  trade_request_id BIGINT REFERENCES public.trade_requests(id),
  rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.user_ratings ENABLE ROW LEVEL SECURITY;

-- Book ratings system
CREATE TABLE public.book_ratings (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID REFERENCES public.profiles(id) NOT NULL,
  book_id BIGINT REFERENCES public.books(id) NOT NULL,
  rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  UNIQUE(user_id, book_id)
);

-- Enable RLS
ALTER TABLE public.book_ratings ENABLE ROW LEVEL SECURITY;

-- User wishlist for books they want
CREATE TABLE public.wishlist_items (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID REFERENCES public.profiles(id) NOT NULL,
  title TEXT NOT NULL,
  author TEXT,
  isbn TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.wishlist_items ENABLE ROW LEVEL SECURITY;

-- Messages table for chat functionality
CREATE TABLE public.messages (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  sender_id UUID REFERENCES public.profiles(id) NOT NULL,
  recipient_id UUID REFERENCES public.profiles(id) NOT NULL,
  content TEXT NOT NULL,
  read BOOLEAN DEFAULT FALSE NOT NULL,
  trade_request_id BIGINT REFERENCES public.trade_requests(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.messages ENABLE ROW LEVEL SECURITY;

-- User notifications
CREATE TABLE public.notifications (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID REFERENCES public.profiles(id) NOT NULL,
  content TEXT NOT NULL,
  read BOOLEAN DEFAULT FALSE NOT NULL,
  related_trade_id BIGINT REFERENCES public.trade_requests(id),
  notification_type TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- Enable RLS
ALTER TABLE public.notifications ENABLE ROW LEVEL SECURITY;

