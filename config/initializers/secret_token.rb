# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
<<<<<<< HEAD
=======
#SampleApp::Application.config.secret_key_base = 'd0e9f8a101aa7231b787ca66184b3b4619e2f7d3605473a1139c1d8ed001137d73c03bb4c2178989e86af4de57954ef64fdf35c333a67793d18a2fd9968e721d'
>>>>>>> cffb4bad84fd0f453ce2d2db6b4f9f2f2695b52f
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
