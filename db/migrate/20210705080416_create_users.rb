class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :mail_id

      t.timestamps
  end
end
