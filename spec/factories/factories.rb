FactoryBot.define do
  factory :day_log do
    association :user
    steps { rand(0..100_000) }
    taken_on { Faker::Date.between(from: 1.year.ago, to: Time.zone.today) }
  end

  factory :user do
    email { Faker::Internet.unique.safe_email }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
