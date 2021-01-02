class Journal < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :taggings
  has_many :tags, through: :taggings
  has_rich_text :body

  validates :title, :body, presence: true

end
