# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photo-portfolio_session',
  :secret      => 'd108f8e52eacd12149852e24189e65fe186dd5c02337c644c6244424655a8565dd6bc4145d35965e2100c3faf58f400dc332794a11e3208b83dca17af170115f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
