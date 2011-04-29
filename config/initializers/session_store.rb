# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_niyicharles_session',
  :secret      => '826bc83c654c244a3b212568c905275f4a17a03debdd413bc3dea1f47ae10a042c41b129b8df225d643bf21f5e7d203674b9fe6eee448ac209195db533d1249b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
