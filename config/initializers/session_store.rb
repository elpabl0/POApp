# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_POApp_session',
  :secret      => '59572263267cc41f984ddbd156f5675e65c2a7967623332a50d28f6e717f6d42c199e0374a4c0ebb90ae0500c93632209362f84f04652b7ebf15d3b4012dcc33'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
