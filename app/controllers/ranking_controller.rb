# frozen_string_literal: true

class RankingController < ApplicationController
  def index
    from = params[:from] ? DateTime.parse(params[:from]) - 9.hour : DateTime.current.beginning_of_day
    to =  params[:from] ? DateTime.parse(params[:to]) - 9.hour : DateTime.current.end_of_day
    summary = ScThread.ranking(from, to)
    render json: Ranking::IndexViewModel.new(summary).to_json
  end
end
