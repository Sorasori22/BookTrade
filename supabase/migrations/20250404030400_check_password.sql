
CREATE OR REPLACE FUNCTION "public"."check_current_password"("password" "text") RETURNS boolean
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
  begin
    return (select exists(select 1 from auth.users where id = auth.uid() and encrypted_password = crypt(password, auth.users.encrypted_password)));
  end;  
$$;
