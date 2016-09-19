class CreateWallposts < ActiveRecord::Migration[5.0]
  def change
    create_table :wallposts do |t|
      t.integer :user_id
      t.text :wall_status
      t.date :wall_date
      t.string :wall_emotion

      t.timestamps
    end
  end
end
