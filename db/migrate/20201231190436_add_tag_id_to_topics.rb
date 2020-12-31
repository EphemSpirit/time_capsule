class AddTagIdToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :tag_id, :integer
  end
end
