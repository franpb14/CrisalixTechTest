require 'rails_helper'
RSpec.describe UsersController do
  let(:first_user) { Fabricate(:user, role: 0) }
  let(:first_doctor) { Fabricate(:user, role: 1) }

  describe 'Get #doctors' do
    it 'shows a list of doctors' do
      get :doctors

      expect(assigns(:doctors)).to include(first_doctor)
      expect(assigns(:doctors)).not_to include(first_user)
    end
  end
end
