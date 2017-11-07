require 'sinatra/base'

class MyApp < Sinatra::Base

    get '/' do
      'Testing Infrastructure'
    end

  get '/battle' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
