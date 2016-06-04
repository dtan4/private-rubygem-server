require "rubygems"
require "geminabox"

if ENV["BASIC_AUTH_USERNAME"] && ENV["BASIC_AUTH_PASSWORD"]
  use Rack::Auth::Basic do |username, password|
    username = ENV["BASIC_AUTH_USERNAME"]
    password = ENV["BASIC_AUTH_PASSWORD"]
  end
end

Geminabox.data = "/var/data"
run Geminabox::Server
