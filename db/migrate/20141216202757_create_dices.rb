class CreateDices < ActiveRecord::Migration
  def change
    create_table :dices do |t|
      t.string :dice_type
      t.integer :sides
      t.string :owner
      t.boolean :used, default: false
    end
  end
end
