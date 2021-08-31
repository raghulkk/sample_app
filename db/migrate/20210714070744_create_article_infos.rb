class CreateArticleInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :article_infos do |t|
      t.references :article
      t.references :info

      t.timestamps
    end
  end
end
