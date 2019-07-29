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

u1 = User.create(first_name: 'Erica', last_name: 'Alpha', email: 'erica@gmail.com', password: 'sendorbesent19')
u2 = User.create(first_name: 'Dean', last_name: 'Bravo', email: 'dean@gmail.com', password: 'nooffseason21')

n1 = NationalPark.create(name: 'Yellowstone National Park', description: 'First national park in the U.S. Known for its geothermal features, including Old Faithful! Grizzly bears, wolves, bison, and elk call this park home. Part of the South Central Rockies forests ecoregion.', location: 'Wyoming/Montana/Idaho')
n2 = NationalPark.create(name: 'Yosemite National Park', description: 'Recognized for its U-shaped valley, giant sequoias, waterfalls, mountains, and biological diversity. One of the most popular climbing destinations in the world, including sites such as El Capitan and Half Dome. ', location: 'Central California')

c1 = Campsite.create(site_number: '183', location: 'Lewis Lake Campground', accomodation: 'Small Campsite', length_of_stay: '2 days', price: 40)
c2 = Campsite.create(site_number: '78', location: 'Grant Village Campground', accomodation: 'Group Campsite', length_of_stay: '5 days', price: 155)
c3 = Campsite.create(site_number: '216', location: 'Upper Pines (Yosemite Valley)', accomodation: 'Large Campsite', length_of_stay: '3 days', price: 78)
c4 = Campsite.create(site_number: '54', location: 'Tamarack Flat (North of Yosemite Valley)', accomodation: 'Small Campsite', length_of_stay: '2 days', price: 24)

t1 = Tour.create(name: 'Rippin Rafting', description: 'A fun ride down class III and IV rapids!', price: 100)
t2 = Tour.create(first_name: 'Majestic Mountain Biking', description: 'A couple bruises never hurt anybody!', price: 90)
t3 = Tour.create(first_name: 'Nifty Nature Hike', description: 'Leaves of three, let them be!', price: 50)
t4 = Tour.create(first_name: 'Rockin Rock Climbing', description: 'On belay, climb away!', price: 150)

b1 = Booking.create(campsite_id: c1.id, user_id: u1.id)
b2 = Booking.create(campsite_id: c2.id, user_id: u2.id)
b3 = Booking.create(campsite_id: c3.id, user_id: u2.id)
b4 = Booking.create(campsite_id: c4.id, user_id: u1.id)

s1 = Slot.create(tour_id: t1.id, user_id: u2.id)
s2 = Slot.create(tour_id: t2.id, user_id: u2.id)
s3 = Slot.create(tour_id: t3.id, user_id: u1.id)
s4 = Slot.create(tour_id: t4.id, user_id: u1.id)

r1 = Review.create(national_park_id: n1.id, user_id: u1.id)
r2 = Review.create(national_park_id: n2.id, user_id: u2.id)