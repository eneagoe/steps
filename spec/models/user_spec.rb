require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { build(:user) }

    it 'is valid' do
      expect(user).to be_valid
    end
  end

  describe 'associations' do
    it 'removes the daily logs of a deleted user' do
      log = create(:day_log)

      expect { log.user.destroy }.to change { DayLog.count }.by(-1)
    end
  end
end
