# require 'sinatra'
# require 'sinatra/activerecord'
# require './models/user'
# require './controllers/users_controller'

# set :database, { adapter: "sqlite3", database: "db/development.sqlite3" }

# get '/' do
#   erb :home
# end

# get '/about' do
#   erb :about
# end

require './config/environment'


class App < Sinatra::Base
  configure do
    set :default_content_type, :json 
  end

  use UsersController
end
