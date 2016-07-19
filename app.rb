require 'sinatra/base'

class Pokemon < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post "/names" do
    @name1 = params[:player1]
    @name2 = params[:player2]
    erb(:play)
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
