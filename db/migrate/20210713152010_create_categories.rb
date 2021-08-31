class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :mail_id
      t.references :app

      t.timestamps
    end
  end
end
