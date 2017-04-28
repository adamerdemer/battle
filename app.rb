
require 'sinatra/base'
#require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'


  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :attack
  end

  run! if app_file == $0
end
