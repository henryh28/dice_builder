class Player < ActiveRecord::Base
  serialize :dice_pool, Array
  serialize :card_pool, Array
  attr_protected
end
