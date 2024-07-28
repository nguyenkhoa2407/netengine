# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

tasks = [
  { title: 'Call references', subtitle: 'Job: NetEngine - Fullstack Engineer', priority: 'high', due_date: 10.days.from_now },
  { title: 'Finish OMSCS application', subtitle: 'Profile, transcript, and cover letter', priority: 'medium', due_date: 30.days.from_now },
  { title: 'Buy birthday gifts', subtitle: "Alex's birthday, no books and no flowers", priority: 'low', due_date: 2.months.from_now },
  { title: 'Buy detergent', subtitle: 'Downy, family size', priority: 'low', due_date: 1.week.from_now },
]

for task in tasks
  Task.find_or_create_by!(title: task[:title]) do |t|
    t.subtitle = task[:subtitle]
    t.priority = task[:priority]
    t.due_date = task[:due_date]
  end
end