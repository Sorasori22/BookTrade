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
  total_trades INTEGER DEFAULT 0 NOT NULL,
  total_rating INTEGER DEFAULT 0 NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- Books table to store book information
CREATE TABLE public.books (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  owner_id UUID REFERENCES public.profiles(id) NOT NULL,
  title TEXT NOT NULL,
  author TEXT NOT NULL,
  description TEXT,
  image_path TEXT,
  average_rating numeric, -- null mean no rating, this field updated by triggwer
  condition INTEGER NOT NULL CHECK (condition BETWEEN 1 AND 5),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- Trade requests table
CREATE TABLE public.trade_requests (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  requester_id UUID not null references public.profiles(id) on delete cascade,
  -- just for easy query and realtime
  owner_id UUID not null references public.profiles(id) on delete cascade,
  book_id BIGINT not null references public.books(id) on delete cascade,
  offered_book_id BIGINT references public.books(id),
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status in ('pending', 'accepted', 'rejected', 'confirmed', 'completed')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- Completed swaps table to track swap history
CREATE TABLE public.completed_swaps (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  requester_id UUID not null references public.profiles(id) on delete cascade,
  owner_id UUID not null references public.profiles(id) on delete cascade,
  requester_book_id BIGINT not null references public.books(id) on delete cascade,
  owner_book_id BIGINT not null references public.books(id) on delete cascade,
  trade_request_id BIGINT references public.trade_requests(id),
  completed_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- User ratings after trades
-- This will be asked after trade is completed
CREATE TABLE public.user_ratings (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  rater_id UUID not null references public.profiles(id) on delete cascade,
  rated_user_id UUID not null references public.profiles(id) on delete cascade,
  trade_request_id BIGINT references public.trade_requests(id),
  rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- Book ratings system
CREATE TABLE public.book_ratings (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID not null references public.profiles(id) on delete cascade,
  book_id BIGINT not null references public.books(id) on delete cascade,
  rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  UNIQUE(user_id, book_id)
);


-- User wishlist for books they want
CREATE TABLE public.wishlist_items (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID not null references public.profiles(id) on delete cascade,
  title TEXT NOT NULL,
  author TEXT,
  isbn TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- Messages table for chat functionality
CREATE TABLE public.messages (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  type TEXT NOT NULL CHECK (type in ('text', 'requestStarted', 'offeredBook', 'tradeConfirmed')) default 'text',
  sender_id UUID not null references public.profiles(id) on delete cascade,
  recipient_id UUID not null references public.profiles(id) on delete cascade,
  content TEXT NOT NULL,
  read BOOLEAN DEFAULT FALSE NOT NULL,
  trade_request_id BIGINT references public.trade_requests(id) on delete cascade,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


-- User notifications
CREATE TABLE public.notifications (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID not null references public.profiles(id) on delete cascade,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  notification_type TEXT NOT NULL,
  payload JSONB,
  read BOOLEAN DEFAULT FALSE NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);


