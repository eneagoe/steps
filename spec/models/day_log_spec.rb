require 'rails_helper'

RSpec.describe DayLog, type: :model do
  context 'validations' do
    let(:log) { build(:day_log) }

    it 'is valid' do
      expect(log).to be_valid
    end

    it 'should not save a record for the future' do
      log.taken_on = Time.zone.tomorrow

      expect(log).to be_invalid
      expect(log.errors[:taken_on]).to_not be_empty
    end
  end
end
