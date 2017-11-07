require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'


  get '/' do
    erb :form
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/battle'
  end

  get '/battle' do
    @p1_attack = false
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :battle
  end

  post '/player1attack' do
    @p1_attack = true
  end

  run! if app_file == $0
end
