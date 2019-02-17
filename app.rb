require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships]
      erb :"pirates/show"
    end

    get '/pirates' do

    end

  end
end
