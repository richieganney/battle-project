require 'capybara'
require 'sinatra'

class Battle < Sinatra::Base

    get '/' do
      erb(:intro)
    end

    get '/players' do
      erb(:players)
    end

    post '/names' do
      @player_1 = params[:player_1]
      @player_2 = params[:player_2]
      erb(:names)
    end

    run! if app_file == $0
end
