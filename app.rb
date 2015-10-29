require 'sinatra/base'

class Battle < Sinatra::Base

run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    @p1=params[:Player1]
    @p2=params[:Player2]
    erb(:play)
  end

end
