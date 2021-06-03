require 'rails_helper'

RSpec.describe Collection do
  fixtures :study_sessions
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
    it 'should have valid name' do
      study_session = StudySession.new(name: 'Algorithm')
      study_session.valid?
      expect(study_session.errors.full_messages).to include("Author must exist")
      expect(study_session).not_to be_valid
    end
  end
end
