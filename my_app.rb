require 'sinatra'
require "sinatra/reloader" if development?
#require "sinatra/activerecord"
require "sinatra/json"

# require 'sinatra-websocket'



configure :development do
#  set :logging, Logger::DEBUG
  set :show_exceptions, :after_handler
end

enable :sessions
set :session_secret, "4659b8f4a27d22f631163db88639714833c6c61b30d2da85f35667615c912b6a1d691e11f73289c9bd5afae3e6213ddcd478aa30f9f454a1dd10e95c1837ba97"



get '/' do
  erb :index
end

get '/about_company' do
  erb :about_company, :layout => :layout_no_contact
end

get '/news' do
  erb :news
end

get '/products' do
  erb :products
end

get '/solutions/:id' do
  erb "solution_#{params['id']}".to_sym
end
