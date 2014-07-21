class CreateSavedGames < ActiveRecord::Migration
  def change
    create_table :saved_games do |t|
      t.integer :user_id
      t.integer :image_1
      t.integer :image_2
      t.integer :image_3
      t.integer :image_4

      t.timestamps
    end
  end
end
