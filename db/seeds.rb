# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.find_or_create_by(name: "Macaroons", price: 8.8, likes_count: 1 + Random.rand(999))
Item.find_or_create_by(name: "Pastries", price: 5.5, likes_count: 1 + Random.rand(999))
Item.find_or_create_by(name: "Ice Cream", price: 3.5, likes_count: 1 + Random.rand(999))
