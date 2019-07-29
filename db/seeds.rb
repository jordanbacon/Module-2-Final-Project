# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tour.destroy_all
User.destroy_all
Slot.destroy_all

t1 = Tour.create(name: 'Rippin Rafting', description: 'A fun ride down class III and IV rapids!', price: 100)
t2 = Tour.create(name: 'Majestic Mountain Biking', description: 'A couple bruises never hurt anybody!', price: 90)
t3 = Tour.create(name: 'Nifty Nature Hike', description: 'Leaves of three, let them be!', price: 50)
t4 = Tour.create(name: 'Rockin Rock Climbing', description: 'On belay, climb away!', price: 150)

u1 = User.create(first_name: 'Erica', last_name: 'Alpha', email: 'erica@gmail.com', password: 'sendorbesent19')
u2 = User.create(first_name: 'Dean', last_name: 'Bravo', email: 'dean@gmail.com', password: 'nooffseason21')



8.times do |i|
    Slot.create(tour_id: t1.id, user_id: nil, time: i+9)
end

8.times do |i|
    Slot.create(tour_id: t2.id, user_id: nil, time: i+9)
end

8.times do |i|
    Slot.create(tour_id: t3.id, user_id: nil, time: i+9)
end

8.times do |i|
    Slot.create(tour_id: t4.id, user_id: nil, time: i+9)
end

# s1 = Slot.create(tour_id: t1.id, user_id: u2.id, time: 9)
# s2 = Slot.create(tour_id: t2.id, user_id: u2.id, time: 10)
# s3 = Slot.create(tour_id: t3.id, user_id: u1.id, time: 11)
# s4 = Slot.create(tour_id: t4.id, user_id: u1.id, time: 12)

s1 = Slot.find(4)
s1.user_id = u1.id
s1.save

s2 = Slot.find(7)
s2.user_id = u2.id
s2.save

s3 = Slot.find(11)
s3.user_id = u1.id
s3.save


    