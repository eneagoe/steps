require 'rails_helper'

RSpec.describe 'Day Logs', type: :request do
  let!(:log) { create(:day_log) }
  let(:user) { create(:user) }

  describe '#index' do
    it 'lists the daily logs' do
      sign_in(user)

      get day_logs_path, headers: api_headers

      expect(response).to be_successful
      expect(json.first).to have_key('steps')
      expect(json.first).to have_key('taken_on')
    end
  end
end
