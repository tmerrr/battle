require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    erb :form
  end

  post '/battle' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :battle
  end

  run! if app_file == $0
end
