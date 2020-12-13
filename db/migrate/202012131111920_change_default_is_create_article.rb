class ChangeDefaultIsCreateArticle < ActiveRecord::Migration[5.2]
  def change
    change_column_default :sc_threads, :is_create_article, from: nil, to: false
  end
end
