require 'rails_helper'

RSpec.describe 'Day Logs', type: :request do
  let(:user) { create(:user) }

  describe '#index' do
    it 'lists the user daily logs' do
      log = create(:day_log, user: user)
      create(:day_log)

      sign_in(user)
      get day_logs_path, headers: api_headers

      expect(response).to be_successful
      expect(json.size).to eq(1)
      expect(json.first['steps']).to eq(log.steps)
      expect(json.first).to have_key('taken_on')
    end
  end
end
