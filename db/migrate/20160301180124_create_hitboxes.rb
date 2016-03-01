class CreateHitboxes < ActiveRecord::Migration
  def change
    create_table :hitboxes do |t|
      t.references :world, index: true, foreign_key: true
      t.string :character
      t.decimal :x_left
      t.decimal :x_right
      t.decimal :y_bottom
      t.decimal :y_top

      t.timestamps null: false
    end
    add_index :hitboxes, [:world_id, :character]
  end
end
