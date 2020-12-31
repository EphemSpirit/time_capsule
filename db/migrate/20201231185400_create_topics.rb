class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    drop_table :topics
    create_table :topics do |t|
      t.references :journal, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true
      t.references :to_do, null: false, foreign_key: true

      t.timestamps
    end
  end
end
