# require "sinatra"

# get '/users' do
#   @users = User.all
#   erb :users
# end	

# post '/users' do
#   user = User.create(name: params[:name], email: params[:name])
# end
require 'pry'

class UsersController<Sinatra::Base
  configure do
    set :default_content_type, :json
  end

  get '/users' do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find_by(id: params[:id])
    if user
      user.to_json
    else
      halt 404, {error: 'User not found'}.to_json
    end
  end

  post '/users' do
     data = JSON.parse(request.body.read)
    user = User.create(name: data[:name], password: data[:name])
    user.to_json
  end  

end