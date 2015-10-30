require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :sessions, 'secret username'

run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = params[:Player1]
    $p2 = params[:Player2]
    redirect('/play')
  end

  get '/play' do
    @p1 = $p1
    @p2 = $p2
    erb(:play)
  end

  get '/attack' do
    @p1 = $p1
    @p2 = $p2
    erb(:attack)
  end

end
