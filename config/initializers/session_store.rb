# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_memcached-poc_session',
  :secret      => '70dcc42e4b9b7edd93a7c628dafe1a444afd3639202abc43349462559396e16293350f3efb2807da5b9c32e979cd365274146dd377fb8f654c10a249f4024ddf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
