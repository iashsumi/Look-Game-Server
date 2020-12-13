# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :game_commentators
  has_many :commentators, through: :game_commentators
  has_many :articles
  has_many :game_kinds

  enum genre: {
    act: 0,       # アクション
    rpg: 1,       # RPG
    arpg: 2,      # アクションROG
    srpg: 3,      # シュミレーションRPG
    ftg: 4,       # 格ゲー
    rogue: 5,     # ローグライク
    drpg3d: 6,    # 3dダンジョンRPG
    stg: 7,       # シューティング
    fps: 8,
    tps: 9,
    fstg: 10,     # フライトシューティング
    bltact: 11,   # ベルトスクロールアクション
    spg: 12,      # スポーツ
    rcg: 13,      # レース
    card: 14,     # カードゲーム
    pzl: 15,      # パズル
    astg: 16,     # アクションシューティング
    aadv: 17,     # アクションアドベンチャー
    tbl: 18,      # 囲碁、将棋やマリパ等も含む
    bslg: 19,     # 戦略・戦術シュミレーション
    mslg: 20,     # 育成/経営シュミレーション
    mlove: 21,    # 恋愛シュミレーション(男向け)
    wlove: 22,    # 恋愛シュミレーション(女向け)
    tower: 23,    # タワーディフェンス
    slg: 24,      # シュミレーション
    adv: 25,      # アドベンチャー
    novel: 26,    # ノベルゲー
    muso: 27,     # 無双系
    music: 28,    # 音ゲー
    other: 29     # その他
  }

  def insert
    # 同タイトルのゲームは登録しない
    return if Game.find_by(title: title, kind: kind).present?

    save
  end
end
