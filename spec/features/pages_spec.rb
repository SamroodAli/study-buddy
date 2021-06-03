require 'rails_helper'
require './spec/support/helpers'

feature 'Study Buddy home integration testing' do
  fixtures :users
  background do
    sam = User.new(name: 'samrood', email: 'user@example.com', password: 'password')
    sign_up_with(sam)
  end

  scenario 'home page has blue background' do
    expect(page).to have_selector('.nav-blue')
  end

  scenario 'home page has navigational links' do
    (page).to_not have_link("All My study sessions")
  end
end
