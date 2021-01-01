class Tag < ApplicationRecord
  has_many :taggings
  has_many :journals, through: :taggings
end
