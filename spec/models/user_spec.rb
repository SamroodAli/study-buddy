require 'rails_helper'

RSpec.describe User do

  subject(:user) { users(:John) }
  let(:invalid_user) { User.new }

end
