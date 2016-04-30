class Board < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
