# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_maple_session',
  :secret      => 'd18c17f8a15878ff4db28af3f0fefc6672114bade8c168dc5a4ec8ba32228c7fe897b04577fcda52c62d07c130171ab735f9372689b47b6b0d6180a26ffca56a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
