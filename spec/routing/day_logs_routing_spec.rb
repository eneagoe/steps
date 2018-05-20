require 'rails_helper'

RSpec.describe DayLogsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/day_logs').to route_to('day_logs#index')
    end

    it 'routes to #show' do
      expect(get: '/day_logs/1').to route_to('day_logs#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/day_logs').to route_to('day_logs#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/day_logs/1').to route_to('day_logs#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/day_logs/1').to route_to('day_logs#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/day_logs/1').to route_to('day_logs#destroy', id: '1')
    end
  end
end
