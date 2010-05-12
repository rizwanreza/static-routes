class SinatraApp < Sinatra::Base
  set :root, File.dirname(__FILE__)
  
  get '/hello' do
    "Hello World of aa!"
  end
  
  get '/hello/2' do
    "Hello World of 2!"
  end
end
