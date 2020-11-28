# frozen_string_literal: true

class Videos::ShowViewModel
  def initialize(video)
    @video = video
  end

  def to_json
    {
      id: @video.id,
      title: @video.title,
      commentator_id: @video.commentator_id,
      commentator_name: @video.commentator.name,
      commentator_thumbnail_url: @video.commentator.thumbnail_url,
      content_id: @video.content_id,
      title: @video.title,
      link: @video.link,
      description: @video.description,
      thumbnail_url: @video.thumbnail_url,
      view_count: @video.view_count,
      published_at: @video.published_at.strftime("%Y/%m/%d %H:%M:%S"),
      created_at: @video.created_at.strftime("%Y/%m/%d %H:%M:%S"),
      updated_at: @video.updated_at.strftime("%Y/%m/%d %H:%M:%S")
    }
  end
end
