class Journal < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :topics
  has_many :tags, through: :topics
  has_rich_text :body

  validates :title, :body, presence: true
end
