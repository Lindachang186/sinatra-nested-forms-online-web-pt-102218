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
      params[:pirate][:ships].each do |details|
        ship = Ship.new(details)
        binding.pry
      end
        @ship = Ship.all

      erb :"pirates/show"
    end

  end
end
