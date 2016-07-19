require 'sinatra/base'

class Pokemon < Sinatra::Base
  get '/' do
    'Hello Pokemon!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
