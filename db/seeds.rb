# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

me = User.new
me.email = 'peter@ap3x.com'
me.password = 'password'
me.password_confirmation = 'password'
me.save!

demo_user = User.new
demo_user.email = 'demo@ap3x.com'
demo_user.password = 'password'
demo_user.password_confirmation = 'password'
demo_user.save!

Activity.create(name: 'sleep', user_id: demo_user.id)
Activity.create(name: 'fiddle', user_id: demo_user.id)
Activity.create(name: 'work', user_id: demo_user.id)
Activity.create(name: 'reading', user_id: demo_user.id)
Activity.create(name: 'friends', user_id: demo_user.id)

today = Date.today
(today-100.days..today).each do |day|
    Entry.create(user_id: demo_user.id, date: day, activity_name: 'sleep', hours: rand(4..8), score: rand(1..10))
    Entry.create(user_id: demo_user.id, date: day, activity_name: 'fiddle', hours: rand(1..3), score: rand(1..10))
    Entry.create(user_id: demo_user.id, date: day, activity_name: 'work', hours: rand(4..10), score: rand(1..10))
    Entry.create(user_id: demo_user.id, date: day, activity_name: 'reading', hours: rand(1..2), score: rand(1..10))
    Entry.create(user_id: demo_user.id, date: day, activity_name: 'friends', hours: rand(1..2), score: rand(1..10))
end

