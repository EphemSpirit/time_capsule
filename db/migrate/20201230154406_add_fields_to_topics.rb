class AddFieldsToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :content, :string
    add_reference :topics, :users, index: true
  end
end
