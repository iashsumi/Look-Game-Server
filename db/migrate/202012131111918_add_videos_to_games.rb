class AddVideosToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :videos, :text, comment: "動画情報(カンマ区切り)"
  end
end
