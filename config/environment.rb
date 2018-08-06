# Load the Rails application.
require_relative 'application'
require 'pdf/writer'
Mime::Type.register 'application/pdf', :pdf

# Initialize the Rails application.
Rails.application.initialize!
