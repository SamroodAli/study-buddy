require 'rails_helper'
require './spec/support/helpers'

feature 'Study Buddy new collection' do
  fixtures :users
  fixtures :collections
  fixtures :study_sessions
  background do
    sam = User.new(name: 'samrood', email: 'user@example.com', password: 'password')
    sign_up_with(sam)
  end

  scenario 'Creating new collection' do
    count_before = Collection.count
    visit new_collection_path
    fill_in 'Enter collection name', with: 'learning algorithms'
    click_button 'Create new collection'
    expect(Collection.count).to eq(count_before + 1)
  end

  scenario 'Creating new collection' do
    count_before = Collection.count
    visit new_collection_path
    fill_in 'Enter collection name', with: ''
    click_button 'Create new collection'
    expect(Collection.count).not_to eq(count_before + 1)
  end
end
