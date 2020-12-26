require 'rails_helper'

describe 'posting a new journal entry' do
  before(:each) do
    let(:user) { create(:user) }
    let(:entry) { create(:entry) }
    visit new_journal_path
  end

  context 'user not signed in' do
    expect(page).to redirect_to(root_path)
  end
end
