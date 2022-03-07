# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Start creating seeds"

require "open-uri"

User.create(email: "harrie@gmail.com", password: "123456")

file = URI.open('https://images.unsplash.com/photo-1473968512647-3e447244af8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJvbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
drone1 = Drone.create!(model: 'HS240', brand: "Holy stone", user_id: 1)
drone1.photo.attach(io: file, filename: 'drone1.png', content_type: 'image/png')

file2 = URI.open('https://images.unsplash.com/photo-1508614589041-895b88991e3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRyb25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
drone2 = Drone.create!(model: 'HS160', brand: "Holy stone", user_id: 1)
drone2.photo.attach(io: file2, filename: 'drone2.png', content_type: 'image/png')

file3 = URI.open('https://images.unsplash.com/photo-1514043454212-14c181f46583?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRyb25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
drone3 = Drone.create!(model: 'D20 HD Camera', brand: "Holy stone", user_id: 1)
drone3.photo.attach(io: file3, filename: 'drone3.png', content_type: 'image/png')

puts "Finished creating seeds"
