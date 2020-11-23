# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    articles = Article.includes(:sc_thread).where(is_published: true).order('sc_threads.thread_created_at desc').page(params[:page])
    render json: Articles::IndexViewModel.new(articles).to_json
  end

  def show
    article = Article.find(params[:id])
    render json: Articles::ShowViewModel.new(article).to_json
  end

  def search
    key_word = params[:key_word]
    relation = Article.includes(:sc_thread).eager_load(:game)
    articles = relation.where(is_published: true).merge(Game.where(title_min: key_word)).or(relation.where(key_word: key_word)).order('sc_threads.thread_created_at desc').page(params[:page])
    render json: Articles::IndexViewModel.new(articles).to_json
  end
end
