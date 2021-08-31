class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :tittle
      t.text :content
      t.string :mail_id

      t.timestamps
    end
  end
end
