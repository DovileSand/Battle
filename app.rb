require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :sessions, 'secret username'

run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['p1'] = params[:Player1]
    session['p2'] = params[:Player2]
    redirect('/play')
  end

  get '/play' do
    @p1 = session['p1']
    @p2 = session['p2']
    erb(:play)
  end

end
