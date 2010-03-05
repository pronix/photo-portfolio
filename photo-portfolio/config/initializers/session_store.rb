# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photo-portpholio_session',
  :secret      => 'a79b84723a55f347fce62d0a991d936438e9edb460264922512fed3677424b06909f42643bc2feb4328b561e27e1eec9adf26cba1b3a5942c1538cbc158ae58a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
