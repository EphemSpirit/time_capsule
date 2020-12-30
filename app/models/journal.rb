class Journal < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_rich_text :body
  has_many :topics, as: :topicable

  validates :title, :body, presence: true

  def tags
    topics.map(&:content)[0].split(", ").uniq!
  end

end
