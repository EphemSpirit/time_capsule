class Journal < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_rich_text :body

  validates :title, :body, presence: true
end
