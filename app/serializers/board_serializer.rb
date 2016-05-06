class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :videos, through: :board_videos
end
