class Topic < ApplicationRecord
  belongs_to :topicable, polymorphic: true

  def to_s
    content
  end

end
