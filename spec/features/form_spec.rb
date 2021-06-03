require 'rails_helper'
require './spec/support/helpers'

feature 'Study Buddy new session and new collection' do
  fixtures :users
  fixtures :collections
  fixtures :study_sessions
  background do
    sam = User.new(name: 'samrood', email: 'user@example.com', password: 'password')
    sign_up_with(sam)
  end
  
  scenario 'Creating new session' do
    visit new_study_session_path
    expect(page).to have_content("enter name")
  end
end
