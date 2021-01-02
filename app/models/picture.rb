class Picture < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings
  has_one_attached :photo

  validates :caption, presence: true
end
