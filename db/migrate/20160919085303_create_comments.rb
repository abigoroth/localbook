class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :wallpost_id
      t.string :comment_message
      t.date :comment_date

      t.timestamps
    end
  end
end
