# frozen_string_literal: true

class RankingController < ApplicationController
  def index
    from = params[:from] ? DateTime.parse(params[:from]) - 9.hour : DateTime.current.beginning_of_day
    to =  params[:from] ? DateTime.parse(params[:to]) - 9.hour : DateTime.current.end_of_day
    daily_summary = ScThread.ranking(from, to)
    weekly_summary = ScThread.ranking(from - 7.day, to)
    monthly_summary = ScThread.ranking(from - 1.month, to)
    year_summary = ScThread.ranking(from - 1.year, to)

    render json: {
      daily_summary: {
        from: from.strftime("%Y/%m/%d %H:%M:%S"),
        to: to.strftime("%Y/%m/%d %H:%M:%S"),
        data: Ranking::IndexViewModel.new(daily_summary).to_json
      },
      weekly_summary: {
        from: (from - 7.day).strftime("%Y/%m/%d %H:%M:%S"),
        to: to.strftime("%Y/%m/%d %H:%M:%S"),
        data: Ranking::IndexViewModel.new(weekly_summary).to_json
      },
      monthly_summary: {
        from: (from - 1.month).strftime("%Y/%m/%d %H:%M:%S"),
        to: to.strftime("%Y/%m/%d %H:%M:%S"),
        data: Ranking::IndexViewModel.new(monthly_summary).to_json
      },
      year_summary: {
        from: (from - 1.year).strftime("%Y/%m/%d %H:%M:%S"),
        to: to.strftime("%Y/%m/%d %H:%M:%S"),
        data: Ranking::IndexViewModel.new(year_summary).to_json
      }
    }
  end
end
