require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'

  get '/' do
    erb :names
  end

  post '/get_names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/battle'
  end

  get '/battle' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :battle
  end

  get '/player1attack' do
    # erb :player1attack
  end

  run! if app_file == $0
end
