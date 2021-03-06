# frozen_string_literal: true

class ScThreads::ShowViewModel
  def initialize(sc_thread)
    @sc_thread = sc_thread
  end

  def to_json(*_args)
    {
      id: @sc_thread.id,
      board_id: @sc_thread.sc_board_id,
      board_name: @sc_thread.sc_board.title,
      board_thumbnail_url: @sc_thread.sc_board.thumbnail_url,
      title: @sc_thread.title,
      url: @sc_thread.url,
      thread_created_at: @sc_thread.thread_created_at.strftime("%Y/%m/%d %H:%M:%S"),
      res_count: @sc_thread.res,
      momentum: @sc_thread.momentum,
      updated_at: @sc_thread.updated_at.strftime("%Y/%m/%d %H:%M:%S"),
      key_words: @sc_thread.sc_thread_keywords,
      res_details: JSON.parse(S3.new.fetch_object(@sc_thread.id.to_s))
    }
  end
end
