require 'rails_helper'
RSpec.describe SessionsController do
  let(:user) { Fabricate(:user, password: 'Crisalix2021', password_confirmation: 'Crisalix2021') }

  describe '#create' do
    context 'when the login is correct' do
      it 'redirects to appointments' do
        post :create, params: { session: { email: user.email, password: user.password } }

        expect(response).to redirect_to(appointments_path)
      end

      it 'redirects to the previous page' do
        session['forwarding_url'] = doctors_path

        post :create, params: { session: { email: user.email, password: user.password } }

        expect(response).to redirect_to(doctors_path)
      end
    end

    context 'when the login is wrong' do
      it 'shows a flash message' do
        post :create, params: { session: { email: user.email, password: 'cra' } }

        expect(flash[:danger]).not_to be_nil
      end
    end
  end
end