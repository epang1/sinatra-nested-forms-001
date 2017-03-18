require './environment'

module FormsLab

  class App < Sinatra::Base

  get '/' do
    body "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    status 200
  end

  get '/new' do
    erb :"pirates/new"
  end

  post '/pirates' do
    pirate = params[:pirate]
    name = pirate[:name]
    weight = pirate[:weight]
    height = pirate[:height]
    ships = pirate[:ships]

    @new_pirate = Pirate.new(name, weight, height, ships)
    erb :'pirates/show'
  end

  end

end
