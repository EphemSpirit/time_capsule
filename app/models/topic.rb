class Topic < ApplicationRecord
  belongs_to :tag
  belongs_to :journal
  belongs_to :photo
  belongs_to :to_do
end
