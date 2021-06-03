require 'rails_helper'

RSpec.feature "Forms", type: :feature do
  it 'can enter a name and receive a greeting' do
    visit 'study_sessions/new'    
    fill_in :name, with: "Learning dynamic programming"
    click_on 'submit'
    expect(page).to have_content "Welcome, Capybara!"
  end
end
