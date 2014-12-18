class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :flavor_text, default: "descriptive"
      t.string :card_type
      t.string :owner
      t.integer :effect
      # code as string to be called
    end
  end
end
