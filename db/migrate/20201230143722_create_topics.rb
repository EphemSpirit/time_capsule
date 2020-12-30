class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :topicable_type
      t.integer :topicable_id

      t.timestamps
    end
  end
end
