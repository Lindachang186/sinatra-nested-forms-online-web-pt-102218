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
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight], params[:pirate][:height])
      binding.pry
      @pirate.each do |details|
        ship = Ship.new(details)
        ship.pirate = pirate
        ship.save
      end
      erb :"pirates/show"
    end

  end
end
