require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    "Hello World"
    erb(:index)
  end 

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'  # has a single reponsibility
  end 

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play) # has a single responsibility
  end

  get '/attacks' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:attacks)
  end
  

  


  run! if app_file == $0
# start the server if ruby file is executed directly

end 