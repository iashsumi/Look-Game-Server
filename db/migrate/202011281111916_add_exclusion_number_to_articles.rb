class AddExclusionNumberToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :exclusion_number, :text, after: :is_check, comment: "除外したいレスのNo(半角数字のカンマ区切り)"
  end
end
