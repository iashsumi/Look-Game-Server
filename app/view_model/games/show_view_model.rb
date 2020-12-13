# frozen_string_literal: true

class Games::ShowViewModel
  def initialize(game)
    @game = game
  end

  def to_json
    {
      id: @game.id,
      title: @game.title,
      title_min: @game.title_min,
      kinds: kinds(@game.game_kinds),
      genre: @game.genre,
      thumbnail: @game.thumbnail,
      publisher: @game.publisher,
      developer: @game.developer,
      tweet: @game.tweet,
      twitter_account_id: @game.twitter_account_id,
      videos: @game.videos
    }
  end

  private
    def kinds(kinds)
      kinds.map do | i |
        {
          kind: i.kind,
          release_date_at: i.release_date_at.strftime("%Y/%m/%d %H:%M:%S")
        }
      end
    end
end
