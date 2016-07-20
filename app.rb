require 'sinatra/base'
require 'player'

class Pokemon < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
