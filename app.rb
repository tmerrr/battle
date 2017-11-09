require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'

  get '/' do
    erb :names
  end

  post '/get_names' do
    # session[:player1] = Player.new(params[:player1])
    # session[:player2] = Player.new(params[:player2])
    $player1      = Player.new(params[:player1])
    $player2      = Player.new(params[:player2])
    session[:hp]  = 100
    redirect '/battle'
  end

  get '/battle' do
    # @player1  = session[:player1]
    # @player2  = session[:player2]
    @player1_name = $player1.name
    @player2_name = $player2.name
    @p1hp     = session[:hp]
    @p2hp     = session[:hp]
    erb :battle
  end

  get '/player1attack' do
    # erb :player1attack
  end

  run! if app_file == $0
end
