# frozen_string_literal: true

require 'sinatra/base'
require './lib/game'
require './lib/player'

class App < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/play/choice' do
    erb :choice
  end

  post '/play/choice' do
    @game.player_1.update_choice(params[:choice])
    redirect '/play/result'
  end

  get '/play/result' do
    @game.player_2.update_choice(params[:choice])
    erb :result
  end

  get '/logout' do
    session[:player_name] = ''
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
