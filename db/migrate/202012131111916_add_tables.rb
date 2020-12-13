class AddTables < ActiveRecord::Migration[5.2]
  def change
    create_table :game_kinds do |t|
      t.references :game
      t.integer :kind, comment: "機種"
      t.datetime :release_date_at, null: false, comment: "発売日"
    end
    add_reference :genres, :game, foreign_key: true
    add_column :games, :tweet, :text, comment: "ツイートのID"
    add_column :games, :twitter_account_id, :string, comment: "TwitterのTL用"
    add_column :games, :developer, :text, comment: "開発元"
    add_column :games, :show_count, :integer, default: 0, comment: "閲覧数"
    add_column :articles, :show_count, :integer, default: 0, comment: "閲覧数"
  end
end
