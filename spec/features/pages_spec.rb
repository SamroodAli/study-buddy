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
    expect(page).to have_link("All My study sessions")
    expect(page).to have_link("All External study sessions")
    expect(page).to have_link("All My Collections")
    expect(page).to have_link("All user's Collections")
    expect(page).to have_link("New Session")
    expect(page).to have_link("New Group")
  end
end
