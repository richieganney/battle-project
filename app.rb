require 'capybara'
require 'sinatra'

class Battle < Sinatra::Base

    get '/' do
      erb(:intro)
    end

    get '/players' do
      erb(:players)
    end

    run! if app_file == $0
end
