# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Activity.create(name: 'sleep')
Activity.create(name: 'fiddle')
Activity.create(name: 'work')
Activity.create(name: 'reading')
Activity.create(name: 'friends')

today = Date.today
(today-100.days..today).each do |day|
    Entry.create(date: day, activity_name: 'sleep', hours: rand(4..8), score: rand(1..10))
    Entry.create(date: day, activity_name: 'fiddle', hours: rand(1..3), score: rand(1..10))
    Entry.create(date: day, activity_name: 'work', hours: rand(4..10), score: rand(1..10))
    Entry.create(date: day, activity_name: 'reading', hours: rand(1..2), score: rand(1..10))
    Entry.create(date: day, activity_name: 'friends', hours: rand(1..2), score: rand(1..10))
end

