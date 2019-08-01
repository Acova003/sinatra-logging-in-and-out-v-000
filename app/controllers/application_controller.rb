require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    #binding.pry
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user.class == User
      session[:user_id] = @user.id
      redirect to '/account'
    else
      erb :error
    end 
  end

  get '/account' do
    #binding.pry
<<<<<<< HEAD
    if !Helpers.is_logged_in?(session)
=======
    if Helpers.is_logged_in?(session)
>>>>>>> 7a284dccac4923c5762fcbc8a530cec2742dacb3
      erb :error 
    else 
      erb :account
    end 
  end

  get '/logout' do
    session.clear
    redirect '/'
  end
end

