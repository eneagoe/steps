FactoryBot.define do
  factory :day_log do
    steps { rand(0..100_000) }
    taken_on { Faker::Date.between(1.year.ago, Date.today) }
  end
end
