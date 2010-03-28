# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_coffee_session',
  :secret      => '3f230cea4b9d8e7cfa96c01962669c12a52e393e3ad1b1bb75577a227aa9e9626ff0edb73324b78cf0e5f0e1879fb50822da706cb07f9850230d9ada75662eaf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
