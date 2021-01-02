class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :journal
  belongs_to :picture
end
