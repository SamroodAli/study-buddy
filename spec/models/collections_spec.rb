require 'rails_helper'

RSpec.describe Collection do
  fixtures :collections
  subject(:Rails) { collections(:Rails) }
  let(:invalid_collection) { Collection.new }

  describe 'Validity with name from fixtures' do
    it 'should be valid from fixtures' do
      expect(subject).to be_valid
    end
  end

  describe :invalid_name do
    it 'should have valid name' do
      collection = Collection.new(name: '')
      collection.valid?
      expect(collection.errors.full_messages).to include("Name can't be blank")
      expect(collection).not_to be_valid
    end
  end
end
