class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :message
      t.references :post

      t.timestamps
    end
  end
end
