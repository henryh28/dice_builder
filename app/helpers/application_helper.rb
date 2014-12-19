module ApplicationHelper

  def display_dice(type)
    @player.dice_pool.select { |die| die.dice_type == type }
  end



end
