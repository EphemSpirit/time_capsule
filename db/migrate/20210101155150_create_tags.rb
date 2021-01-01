class CreateTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :topics
    drop_table :tags
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
