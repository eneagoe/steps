namespace :lint do
  desc 'Clean up slim files'
  task :slim, %i[report] => :environment do |_, args|
    if args.report.present?
      exec "slimcop -d #{Rails.root.join('app/**/*.slim')}"
    else
      exec "slimcop -a -d #{Rails.root.join('app/**/*.slim')}"
    end
  end
end
