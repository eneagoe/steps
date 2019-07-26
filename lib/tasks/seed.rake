namespace :dev do
  desc 'Seed the database with fake data'
  task :seed, [] => :environment do
    10.times do
      password = SecureRandom.uuid
      records = rand(1..30)
      start_date = Time.zone.yesterday - records.days
      user = User.create! email: Faker::Internet.unique.safe_email,
                          password: password, password_confirmation: password
      records.times do |i|
        user.day_logs.create! steps: rand(10..15_000),
                              taken_on: start_date + i.days
      end
    end
  end

  desc 'Add fake data for specified user'
  task :seed_user, %i[email] => :environment do |_, args|
    user = User.find_by(email: args.email)
    records = rand(1..30)
    start_date = Time.zone.yesterday - records.days
    records.times do |i|
      user.day_logs.create! steps: rand(10..15_000),
                            taken_on: start_date + i.days
    end
  end
end
