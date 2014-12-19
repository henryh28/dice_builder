class ApplicationController < ActionController::Base
  protect_from_forgery

  def create_player
    player = Player.create(name: params[:new_player][:name])

    params[:new_player][:gatherer].to_i.times do
      p player.dice_pool << Dice.new(dice_type: "gatherer", sides: 4)
    end

    params[:new_player][:offense].to_i.times do
      p player.dice_pool << Dice.new(dice_type: "offense", sides: 4)
    end

    params[:new_player][:research].to_i.times do
      player.dice_pool << Dice.new(dice_type: "research", sides: 4)
      player.save
    end

    params[:new_player][:worker].to_i.times do
      player.dice_pool << Dice.new(dice_type: "worker", sides: 4)
    end

    player
  end

end
