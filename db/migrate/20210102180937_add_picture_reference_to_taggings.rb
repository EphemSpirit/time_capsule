class AddPictureReferenceToTaggings < ActiveRecord::Migration[6.0]
  def change
    add_reference :taggings, :picture, foreign_key: true
  end
end
