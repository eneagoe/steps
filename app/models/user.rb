# models an application user
class User < ApplicationRecord
  has_many :day_logs, dependent: :destroy

  devise :database_authenticatable, :lockable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
