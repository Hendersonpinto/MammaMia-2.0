# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
henderson = User.new(
 name: "Henderson",
 last_name: "Pinto",
 location: Faker::Address.full_address,
 email: "henderson@mammamia.com",
 password: "1234567"
 )
henderson.save!
rasmus = User.new(
 name: "Rasmus",
 last_name: "Melberg",
 location: Faker::Address.full_address,
 email: "rasmus@mammamia.com",
 password: "1234567"
 )
rasmus.save!
marcus = User.new(
 name: "Marcus",
 last_name: "Aandahl",
 location: Faker::Address.full_address,
 email: "marcus@mammamia.com",
 password: "1234567"
 )
marcus.save!
first_user = User.new(
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "1234567"
)
first_user.save!
second_user = User.new(
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "1234567"
)
second_user.save!
third_user = User.new(
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "1234567"
)
third_user.save!
mom1 = Mom.new(
  name: 'Maria',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  price: Faker::Number.within(range: 50..100),
  owner: henderson
)
mom1.save!
mom2 = Mom.new(
  name: 'Anne',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  price: Faker::Number.within(range: 50..100),
  owner: marcus
)
mom2.save!
mom3 = Mom.new(
  name: 'Ingrid',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  price: Faker::Number.within(range: 50..100),
  owner: rasmus
)
mom3.save!
mom4 = Mom.new(
  name: 'Irene',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  price: Faker::Number.within(range: 50..100),
  owner: first_user
)
mom4.save!
mom5 = Mom.new(
  name: 'Caroline',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  price: Faker::Number.within(range: 50..100),
  owner: second_user
)
mom5.save!
mom6 = Mom.new(
  name: 'Martha',
  last_name: Faker::Name.last_name,
  location: Faker::Address.full_address,
  price: Faker::Number.within(range: 50..100),
  owner: third_user
)
mom6.save!

booking_marcus = Booking.new(
 renter: marcus,
 mom: mom6,
 price: 500
 )

# 20.times do
#  mom = Mom.new(
#    name: Faker::Name.first_name,
#    last_name: Faker::Name.last_name,
#    location: Faker::Address.full_address,
#    price: Faker::Number.within(range: 50..100),
#    owner: [henderson, rasmus, marcus].sample
#  )
#  mom.save!
# end
# 10.times do
#  user = User.new(
#    name: Faker::Name.first_name,
#    last_name: Faker::Name.last_name,
#    location: Faker::Address.full_address,
#    email: Faker::Internet.email
#  )
#  user.save!
# end
