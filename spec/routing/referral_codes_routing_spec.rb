require 'rails_helper'

RSpec.describe Api::V1::ReferralCodesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: 'api/v1/referral_codes').to route_to('api/v1/referral_codes#index')
    end

    it 'routes to #new' do
      expect(get: 'api/v1/referral_codes/new').to route_to('api/v1/referral_codes#new')
    end

    it 'routes to #show' do
      expect(get: 'api/v1/referral_codes/1').to route_to('api/v1/referral_codes#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: 'api/v1/referral_codes/1/edit').to route_to('api/v1/referral_codes#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'api/v1/referral_codes').to route_to('api/v1/referral_codes#create')
    end

    it 'routes to #update via PUT' do
      expect(put: 'api/v1/referral_codes/1').to route_to('api/v1/referral_codes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'api/v1/referral_codes/1').to route_to('api/v1/referral_codes#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'api/v1/referral_codes/1').to route_to('api/v1/referral_codes#destroy', id: '1')
    end
  end
end
