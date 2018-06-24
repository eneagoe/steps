# models the daily number of steps
class DayLog < ApplicationRecord
  belongs_to :user
end
