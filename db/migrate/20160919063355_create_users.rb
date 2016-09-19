class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.date :birthday
      t.string :about

      t.timestamps
    end
  end
end
