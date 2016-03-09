class CreateHighscores < ActiveRecord::Migration
  def change
    drop_table :highscores
    create_table :highscores do |t|
      t.string :name
      t.integer :time
      t.references :world, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :highscores, [:world_id, :created_at]
  end
end
