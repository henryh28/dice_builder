module ApplicationHelper

  def dice_display(type)
    dice = []
    @player.dice_pool.each do |die|
      dice << die.sides if die.dice_type == type
    end
    dice
  end
end
