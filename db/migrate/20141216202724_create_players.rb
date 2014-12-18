class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :command, default: 3
      t.integer :hand_size, default: 3
      t.boolean :player_turn, default: true
      t.text :dice_pool
      t.text :card_pool
    end
  end
end
