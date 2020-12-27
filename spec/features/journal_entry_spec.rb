require 'rails_helper'

RSpec.describe 'posting a journal entry' do

  let(:user) { create(:user) }

  xit 'posts a journal entry' do
    #log a user in
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"

    #write a journal entry
    visit new_entry_path
    expect(page).to have_content("Make a New Journal Entry")
    fill_in "Title", with: "test post"
    fill_in_rich_text_area "journal_body", with: "this is a test post"
    expect(current_path).to eq(root_path)
  end
end
