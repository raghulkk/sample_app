class CreateInfoArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :info_articles, :id => false do |t|
      t.references :article
      t.references :info

      t.timestamps
    end
  end
end
