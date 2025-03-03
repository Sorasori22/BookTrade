
-- First, create the helper function
CREATE OR REPLACE FUNCTION public.generate_unique_username(base_username TEXT)
RETURNS TEXT AS $$
DECLARE
    new_username TEXT;
    counter INTEGER := 0;
BEGIN
    -- return if not record in users table
    IF NOT EXISTS (SELECT 1 FROM public.profiles WHERE username = base_username) THEN
        RETURN base_username;
    END IF;

    -- Handle empty or null base_username
    IF base_username IS NULL OR base_username = '' THEN
        base_username := 'user';
    END IF;
    
    -- Ensure minimum length and handle special characters
    base_username := SUBSTR(REGEXP_REPLACE(LOWER(base_username), '[^a-z0-9]', '', 'g'), 1, 15);
    
    -- If resulting username is empty after cleanup, use 'user'
    IF base_username = '' THEN
        base_username := 'user';
    END IF;
    
    -- Start with the base username
    new_username := base_username;
    
    -- Keep checking and incrementing until we find a unique username
    WHILE EXISTS (SELECT 1 FROM public.profiles WHERE username = new_username) LOOP
        counter := counter + 1;
        new_username := base_username || counter::TEXT;
        
        -- Prevent infinite loop
        IF counter > 1000 THEN
            new_username := base_username || '_' || gen_random_uuid();
            EXIT;
        END IF;
    END LOOP;
    
    RETURN new_username;
END;
$$ LANGUAGE plpgsql;

-- Then create the main trigger function
CREATE OR REPLACE FUNCTION public.handle_new_profile()
RETURNS TRIGGER AS $$
BEGIN
    -- Insert new user with generated username
    INSERT INTO public.profiles (id, email, username, fullname, age)
    VALUES (
        NEW.id, 
        NEW.email, 
        public.generate_unique_username(SPLIT_PART(NEW.email, '@', 1)),
        NEW.raw_user_meta_data->>'fullname',
        (NEW.raw_user_meta_data->>'age')::INTEGER
    );
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Finally create the trigger
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
AFTER INSERT ON auth.users
FOR EACH ROW
EXECUTE FUNCTION public.handle_new_profile();