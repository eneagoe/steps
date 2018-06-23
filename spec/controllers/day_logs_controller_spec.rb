require 'rails_helper'

RSpec.describe DayLogsController, type: :controller do
  let!(:day_log) { create(:day_log) }

  describe '#index' do
    it 'returns http success' do
      get :index, format: :json

      expect(response).to be_successful
    end
  end

  describe '#show' do
    it 'returns http success' do
      get :show, params: {id: day_log.id}, format: :json

      expect(response).to be_successful
    end
  end

  describe '#create' do
    let(:day_log_params) { build(:day_log).attributes }

    it 'returns http success with valid parameters' do
      expect do
        post :create, params: {day_log: day_log_params}, format: :json
      end.to change { DayLog.count }.by(1)

      expect(response).to be_successful
    end

    it 'responds with unprocessable entity on failure' do
      allow_any_instance_of(DayLog).to receive(:save).and_return(false)

      expect do
        post :create, params: {day_log: day_log_params}, format: :json
      end.not_to(change { DayLog.count })

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe '#update' do
    it 'responds with success' do
      patch :update, params: {id: day_log.id, day_log: {steps: 1000}},
                     format: :json

      expect(response).to be_successful
    end

    it 'responds with unprocessable entity on failure' do
      allow_any_instance_of(DayLog).to receive(:update).and_return(false)

      patch :update, params: {id: day_log.id, day_log: {steps: 100}},
                     format: :json

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe '#destroy' do
    it 'responds with success' do
      day_log_to_delete = create(:day_log)

      expect do
        delete :destroy, params: {id: day_log_to_delete}, format: :json
      end.to change { DayLog.count }.by(-1)

      expect(response).to be_successful
    end

    it 'responds with unprocessable entity if it cannot delete the record' do
      allow_any_instance_of(DayLog).to receive(:destroy).and_return(false)

      expect do
        delete :destroy, params: {id: day_log.id}, format: :json
      end.to_not(change { DayLog.count })

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
