# frozen_string_literal: true

class GamesController < ApplicationController
  def index
    games = Game.order('release_date_at desc').page(params[:page])
    render json: Games::IndexViewModel.new(games).to_json
  end

  def show
    game = Game.find(params[:id])
    render json: Games::ShowViewModel.new(game).to_json
  end

  def search
    query = Game.includes(:game_kinds).order('release_date_at desc').page(params[:page])
    query = query.where(game_kind: {kind: params[:kind]}) if params[:kind].present?
    query = query.where(genre: params[:genre]) if params[:genre].present?
    render json: Games::IndexViewModel.new(query).to_json
  end
end
