require 'rails_helper'

RSpec.describe User do
  fixtures :users
  subject(:user) { users(:Samrood) }
  let(:invalid_user) { User.new }

  describe 'Validity with name,password and email from fixtures' do
    it 'should be valid from fixtures' do
      expect(user).to be_valid
    end
  end

  describe :invalid_name do
    it 'should have valid name' do
      user = User.new(name: '', email: 'some@gmail.com')
      user.valid?
      expect(user.errors.full_messages).to include("Name can't be blank")
      expect(user).not_to be_valid
    end
  end

  describe :invalid_password do
    it 'should have valid name' do
      user = User.new(name: 'samrood', email: 'some@gmail.com')
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
      expect(user).not_to be_valid
    end
  end

  describe :invalidity do
    it 'should not be valid with blank fields' do
      expect(invalid_user).not_to be_valid
    end
  end
end
