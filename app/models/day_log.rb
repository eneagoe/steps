# models the daily number of steps
class DayLog < ApplicationRecord
  belongs_to :user

  validates :taken_on, presence: true
  validate :taken_in_the_past

  private

  def taken_in_the_past
    return if taken_on.present? && taken_on <= Time.zone.today

    i18n_scope = 'activerecord.errors.models.daily_log.attributes.taken_on'
    errors[:taken_on] << I18n.t('in_the_past', scope: i18n_scope)
  end
end
