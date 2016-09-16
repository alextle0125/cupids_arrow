# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

default_location = Location.find_or_create_by(curr_status: Faker::Company.catch_phrase, like_count: 1 + Random.rand(999), street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip_code: Faker::Address.zip, longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, curr_status_img: Faker::Company.logo)

item1 = Item.find_or_create_by(name: Faker::Commerce.product_name, price: 8.8, likes_count: 1 + Random.rand(999), location: default_location)
item2 = Item.find_or_create_by(name: Faker::Commerce.product_name, price: 5.5, likes_count: 1 + Random.rand(999), location: default_location)
item3 = Item.find_or_create_by(name: Faker::Commerce.product_name, price: 3.5, likes_count: 1 + Random.rand(999), location: default_location)
