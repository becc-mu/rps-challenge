# frozen_string_literal: true

require 'sinatra/base'
require './lib/rps_game'
require './lib/player'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/' do
    erb :register_player
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect :play
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  post '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    redirect '/do_play'
  end

  post '/choice' do
    @player_1_name = $player_1.name
    @player_1.update_move(params[:choice])
    @player_2_name = $player_2.name
    @player_2.update_move(params[:choice])

    redirect '/do_choice'
  end

  post '/do_register' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  post '/do_play' do
    game = RpsGame.new
    @computer_move = game.random_move
    @user_move = params[:move]
    game_result = game.move(@user_move, @computer_move)
    case game_result
    when RpsGame::P1_WINS
      @win_msg = 'You Win!'
    when RpsGame::P2_WINS
      @win_msg = 'You Lose!'
    when RpsGame::DRAW
      @win_msg = "It's a draw..."
    end
    @player_name = session[:player_name]
    erb :result
  end

  get '/logout' do
    session[:player_name] = ''
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
