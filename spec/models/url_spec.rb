require 'rails_helper'

RSpec.describe Url, type: :model do
  let(:url) { build(:url) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(url).to be_valid
    end

    it 'is not valid without an ip' do
      url.url = 'ole.com.ar'
      expect(url).not_to be_valid
    end
  end  
end
