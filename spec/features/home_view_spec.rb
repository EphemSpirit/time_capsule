require 'rails_helper'
require_relative "../support/devise"
require_relative "../support/controller_macros"


describe 'the home view', type: :feature do

  before(:each) do
    visit root_path
  end

  describe 'page links' do

    it 'has links for sign in and sign up' do
      expect(page).to have_link("Sign In", href: new_user_session_path)
      expect(page).to have_link("Sign Up", href: new_user_registration_path)
    end

    it 'has link to sign out when logged in' do
      login_user
      expect(page).to have_link("Sign Out", href: destroy_user_session_path)
      expect(page).to_not have_link("Sign In", href: new_user_session_path)
    end

  end

end
