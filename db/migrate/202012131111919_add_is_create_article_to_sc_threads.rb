class AddIsCreateArticleToScThreads < ActiveRecord::Migration[5.2]
  def change
    add_column :sc_threads, :is_create_article, :boolean, comment: "記事作成済かどうか"
  end
end
