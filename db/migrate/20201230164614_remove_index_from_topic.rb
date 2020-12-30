class RemoveIndexFromTopic < ActiveRecord::Migration[6.0]
  def change
    remove_reference :topics, :users, index: true
  end
end
