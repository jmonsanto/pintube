class Video < ActiveRecord::Base
  validates :identifier,
            :published_at,
            :channel_id,
            :title,
            :description,
            :thumbnail,
            :channel_title,
            :category_id, presence: true
  validates :identifier, uniqueness: true
end
