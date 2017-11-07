require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'


  get '/' do
    erb :form
  end

  post '/names' do
    p params
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/battle'
  end

  get '/battle' do
    p session
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :battle
  end

  run! if app_file == $0
end
