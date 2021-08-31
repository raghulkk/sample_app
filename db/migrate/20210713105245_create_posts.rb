class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :tittle
      t.text   :content
      t.references :user
      t.timestamps
    end
  end
end
