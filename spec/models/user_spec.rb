require 'rails_helper'
RSpec.describe User do
  subject(:user) { Fabricate(:user, role: 1) }

  describe '#doctor?' do
    it 'should return true if user is a doctor' do
      expect(user.doctor?).to eq(true)
    end
  end
end