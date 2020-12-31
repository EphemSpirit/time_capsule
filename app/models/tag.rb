class Tag < ApplicationRecord
  has_many :topics
  has_many :journals, through: :topics
end
