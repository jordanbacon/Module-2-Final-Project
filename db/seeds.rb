# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
NationalPark.destroy_all
Campsite.destroy_all
Tour.destroy_all
Booking.destroy_all
Slot.destroy_all
Review.destroy_all

u1 = User.create(name: 'Erica Alpha', email_address: 'erica@gmail.com', password: 'sendorbesent19')
u2 = User.create(name: 'Dean Bravo', email_address: 'dean@gmail.com', password: 'nooffseason21')

n1 = NationalPark.create(name: 'Yellowstone National Park', description: 'First national park in the U.S. Known for its geothermal features, including Old Faithful! Grizzly bears, wolves, bison, and elk call this park home. Part of the South Central Rockies forests ecoregion.', location: 'Wyoming/Montana/Idaho')
n2 = NationalPark.create(name: 'Yosemite National Park', description: 'Recognized for its U-shaped valley, giant sequoias, waterfalls, mountains, and biological diversity. One of the most popular climbing destinations in the world, including sites such as El Capitan and Half Dome. ', location: 'Central California')

c1 = Campsite.create(site_number: 183, location: 'Lewis Lake Campground', accomodation: 'Small Campsite', length_of_stay: '2 days', price: 40, national_park_id: n1.id)
c2 = Campsite.create(site_number: 78, location: 'Grant Village Campground', accomodation: 'Group Campsite', length_of_stay: '5 days', price: 155, national_park_id: n1.id)
c3 = Campsite.create(site_number: 216, location: 'Upper Pines (Yosemite Valley)', accomodation: 'Large Campsite', length_of_stay: '3 days', price: 78, national_park_id: n2.id)
c4 = Campsite.create(site_number: 54, location: 'Tamarack Flat (North of Yosemite Valley)', accomodation: 'Small Campsite', length_of_stay: '2 days', price: 24, national_park_id: n2.id)

t1 = Tour.create(name: 'Rippin Rafting', description: 'A fun ride down class III and IV rapids!', price: 100, national_park_id: n1.id)
t2 = Tour.create(name: 'Majestic Mountain Biking', description: 'A couple bruises never hurt anybody!', price: 90, national_park_id: n2.id)
t3 = Tour.create(name: 'Nifty Nature Hike', description: 'Leaves of three, let them be!', price: 50, national_park_id: n1.id)
t4 = Tour.create(name: 'Rockin Rock Climbing', description: 'On belay, climb away!', price: 150, national_park_id: n2.id)

b1 = Booking.create(campsite_id: c1.id, user_id: u1.id)
b2 = Booking.create(campsite_id: c2.id, user_id: u2.id)
b3 = Booking.create(campsite_id: c3.id, user_id: u2.id)
b4 = Booking.create(campsite_id: c4.id, user_id: u1.id)

s1 = Slot.create(tour_id: t1.id, user_id: u2.id)
s2 = Slot.create(tour_id: t2.id, user_id: u2.id)
s3 = Slot.create(tour_id: t3.id, user_id: u1.id)
s4 = Slot.create(tour_id: t4.id, user_id: u1.id)

r1 = Review.create(description: 'Old Faithful was amazing! But take my advice: do not wade into the geysers. Those things are hot!', national_park_id: n1.id, user_id: u1.id)
r2 = Review.create(description: 'Had a great time, even though many of the waterfalls have dried up :( Do not miss out on the chance to watch the sunrise at Half Dome!', national_park_id: n2.id, user_id: u2.id)

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

# s1 = Slot.find(4)
# s1.user_id = u1.id
# s1.save

# s2 = Slot.find(7)
# s2.user_id = u2.id
# s2.save

# s3 = Slot.find(11)
# s3.user_id = u1.id
# s3.save