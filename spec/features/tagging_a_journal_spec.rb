require 'rails_helper'

RSpec.describe 'adding tags to a journal' do

  let(:user) { create(:user) }
  let(:entry) { create(:entry) }

  xit 'adds tags to a journal entry' do
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"

    visit new_entry_path
    expect(page).to have_content("Make a New Journal Entry")
    fill_in "Title", with: "Test post"
    fill_in "Body", with: "testing tags"
    page.select 'Travel', from: 'Tag ids'
    click_button "Post Entry"
    expect(entry.tags.map(&:name)).to include("Travel")
  end

end
