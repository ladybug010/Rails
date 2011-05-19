# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fast_books_session',
  :secret      => '0bac86a0150ad8eb370e7692ff9508e7f85a43926795f972b5ca1443f1f25fb66a9ea0ba9eb8ef4008d3c8e41563d89754fe37e253b12ca444989a8c8dfee992'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
