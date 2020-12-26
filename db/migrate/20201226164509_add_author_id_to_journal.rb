class AddAuthorIdToJournal < ActiveRecord::Migration[6.0]
  def change
    remove_reference :journals, :user, index: true
    add_reference :journals, :author, index: true 
  end
end
