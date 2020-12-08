# frozen_string_literal: true

class Ranking::IndexViewModel
  def initialize(summary)
    @summary = summary
  end

  def to_json
    fetch_summary(@summary)
  end

  private
    def fetch_summary(summary)
      games = Game.where(id: summary.map(&:id)).to_a
      summary.map do |item|
        game = games.find{|i| i.id == item.id }
        {
          game: game,
          count: item.count
        }
      end
    end
end
