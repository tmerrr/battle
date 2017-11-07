require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    'hello'
  end

  get '/battle' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
