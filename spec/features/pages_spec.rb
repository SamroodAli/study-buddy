require 'rails_helper'
require './spec/support/helpers'

feature 'Study Buddy home integration testing' do
  fixtures :users
  fixtures :collections
  fixtures :study_sessions
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

  scenario "collection's page" do
    visit collection_path(collections(:Algorithm))
    expect(page).to have_link("Sessions in this collection")
    expect(page).to have_link("Create new session in this collection")
  end

  scenario "Study Sessions page" do
    visit study_sessions_path
    expect(page).to have_content("Most ancient")
    expect(page).to have_content("Most recent")
  end
end
