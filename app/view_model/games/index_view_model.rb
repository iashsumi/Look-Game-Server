# frozen_string_literal: true

class Games::IndexViewModel
  def initialize(games)
    @games = games
  end

  def to_json(*_args)
    {
      games: fetch_games,
      meta: {
        total_count: @games.total_count,
        total_pages: @games.total_pages,
        current_page: @games.current_page
      }
    }
  end

  private
    def fetch_games
      @games.includes(:game_kinds).map do |game|
        {
          id: game.id,
          title: game.title,
          title_min: game.title_min,
          kinds: kinds(game.game_kinds),
          genre: game.genre,
          thumbnail: game.thumbnail,
          publisher: game.publisher,
          developer: game.developer,
          tweet: game.tweet,
          twitter_account_id: game.twitter_account_id
        }
      end
    end

    def kinds(kinds)
      kinds.map do | i |
        {
          kind: i.kind,
          release_date_at: i.release_date_at.strftime("%Y/%m/%d %H:%M:%S")
        }
      end
    end
end
