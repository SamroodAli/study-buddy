require 'rails_helper'
require './spec/support/helpers'

feature 'Study Buddy new session' do
  fixtures :users
  background do
    sam = User.new(name: 'samrood', email: 'user@example.com', password: 'password')
    sign_up_with(sam)
  end
  scenario 'Creating new session' do
    count_before = StudySession.count
    visit new_study_session_path
    fill_in 'Enter session name', with: 'learning algorithms'
    fill_in 'Duration start', with: '01:00'
    fill_in 'Duration end', with: '03:00'
    click_button 'Create new session'
    expect(StudySession.count).to eq(count_before + 1)
  end

  scenario 'Creating an session with no name' do
    count_before = StudySession.count
    visit new_study_session_path
    fill_in 'Duration start', with: '01:00'
    fill_in 'Duration end', with: '03:00'
    click_button 'Create new session'
    expect(StudySession.count).not_to eq(count_before + 1)
  end

  scenario 'Creating an session with no duration start' do
    count_before = StudySession.count
    visit new_study_session_path
    fill_in 'Enter session name', with: 'Learning rails'
    fill_in 'Duration end', with: '03:00'
    click_button 'Create new session'
    expect(StudySession.count).not_to eq(count_before + 1)
  end
end
