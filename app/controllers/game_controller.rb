class GameController < ApplicationController

  def new
  end

  def create
    if params[:new_player][:gatherer].to_i + params[:new_player][:worker].to_i + params[:new_player][:research].to_i + params[:new_player][:offense].to_i == 5
      session[:player] = create_player
      redirect_to game_play_path
    else
      redirect_to game_new_path
    end
  end


  def play
    @player = session[:player]
  end

end
