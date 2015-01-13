# server.rb
require 'sinatra'
require 'json'

#settings
set :bind, 'localhost'
set :port, 9292

get '/repository/:name' do

  puts "--- start ---"

  file = File.read('repositories.json')
  data = JSON.parse(file)

  data["repositories"].each do |item|

    if item["name"] == params[:name]

      if File.exists?(item["path"])
        system("cd #{item["path"]} && git pull")
        puts "--- pull ---"
      else
        system("cd #{item["path"]} && git clone #{item["clone-url"]}")
        puts "--- clone ---"
      end

    end

  end

  puts "--- end ---"
  
end
