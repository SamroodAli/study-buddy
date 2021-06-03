require 'rails_helper'

RSpec.describe Collection do
  fixtures :study_sessions
  fixtures :users
  subject(:Algorithm) { study_sessions(:Algorithm) }
  let(:invalid_session) { StudySession.new }

  describe 'Validity with name from fixtures' do
    it 'should be valid from fixtures' do
      expect(subject).to be_valid
    end
  end

  describe :invalid_name do
    it 'should have valid name' do
      study_session = StudySession.new(name: '')
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Name can't be blank")
      expect(study_session).not_to be_valid
    end
  end

  describe :invalid_name do
    it 'should have valid author' do
      study_session = StudySession.new(name: 'Algorithm')
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Author must exist")
      expect(study_session).not_to be_valid
    end
  end

  describe :invalid_collection do
    it 'should be in a valid collection' do
      study_session = StudySession.new(name: 'Algorithm',author:users(:Samrood))
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Collection must exist")
      expect(study_session).not_to be_valid
    end
  end

  describe :invalid_duration_start do
    it 'should be valid' do
      study_session = StudySession.new(name: 'Algorithm',author:users(:Samrood))
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Duration start can't be blank")
      expect(study_session).not_to be_valid
    end
  end

  describe :invalid_duration_end do
    it 'should be valid' do
      study_session = StudySession.new(name: 'Algorithm',author:users(:Samrood))
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Duration end can't be blank")
      expect(study_session).not_to be_valid
    end
  end

  describe :invalid_duration do
    it 'should be valid' do
      study_session = StudySession.new(name: 'Algorithm',author:users(:Samrood))
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Duration can't be blank")
      expect(study_session).not_to be_valid
    end
  end
end
