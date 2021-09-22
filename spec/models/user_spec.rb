require 'rails_helper'

RSpec.describe User, type: :model do 
  let(:user) { build(:user) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without an ip' do
      user.ip = nil
      expect(user).not_to be_valid
    end
  end  
end
