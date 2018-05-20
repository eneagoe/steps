require 'rails_helper'

RSpec.describe DayLog, type: :model do
  context 'validations' do
    let(:log) { build(:day_log) }

    it 'is valid' do
      expect(log).to be_valid
    end
  end
end
