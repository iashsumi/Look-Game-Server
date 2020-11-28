# frozen_string_literal: true

class VideosController < ApplicationController
  def index
    videos = Video.order(published_at: "DESC").page(params[:page]).per(50)
    render json: Videos::IndexViewModel.new(videos).to_json
  end

  def show
    video = Video.includes(:commentator).find(params[:id])
    render json: Videos::ShowViewModel.new(video).to_json
  end
end
