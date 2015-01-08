# server.rb
require 'sinatra'
require 'json'

class Server < Sinatra::Base
  get '/test' do
    puts "it works!"
  end
end
