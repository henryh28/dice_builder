class MainController < ApplicationController

  def index
    @player = Player.first
    Dice.all #Needed to allow for @player.dice_pool to display properly?
  end

end
