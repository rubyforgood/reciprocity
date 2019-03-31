require 'rails_helper'

RSpec.describe 'Interactions', type: :request do
  before do
    user = User.create!(email: 'person@example.com', password: 'xyz123456', confirmed_at: Time.now)
    sign_in user
  end

  describe 'GET /interactions' do
    it 'works! (now write some real specs)' do
      get interactions_path
      expect(response).to have_http_status(200)
    end
  end
end
