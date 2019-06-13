# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contract.destroy_all
Review.destroy_all
Service.destroy_all
Category.destroy_all
User.destroy_all



Category.create!(id: 33, name: "Flying dude").save!(validate: false)
Category.create!(id: 34, name: "Killers").save!(validate: false)
Category.create!(id: 35, name: "Gardening").save!(validate: false)
Category.create!(id: 36, name: "Musicians").save!(validate: false)
Category.create!(id: 37, name: "Basketballers").save!(validate: false)

User.create!(id: 1, email: "moo@cow.com", password: "123456", first_name: "Moo", last_name: "Cow").save(validate: false)
User.create!(id: 2, email: "miauw@cat.com", password: "123456", first_name: "Miauw", last_name: "Cat").save(validate: false)
User.create!(id: 3, email: "woof@dog.com", password: "123456", first_name: "Woof", last_name: "Dog").save(validate: false)
User.create!(id: 4, email: "peep@mouse.com", password: "123456", first_name: "Peep", last_name: "Mouse").save(validate: false)

Service.create!(id: 1, name: "Hire Muscian", content: "Hire me the infamous Slash as your awesome guitar player", price: 10000, location: "Groningen", category_id: 33, user_id: 1, remote_photo_url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560351307/zuezy1s7qlx8bhdquii7.jpg").save!(validate: false)
Service.create!(id: 2, name: "Vincent & Jules killing service", content: "Vincent and Jules from Pulp fiction can be rented to scare the shit out of your neighbor or, if you prefer, kill your mother in-law or stupid boss.", price: 10000, location: "Helsingborg", category_id: 34, user_id: 2, remote_photo_url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560351064/lesdru1fgui1jjiz1qt7.jpg").save!(validate: false)
Service.create!(id: 3, name: "Hire me gardner", content: "Hire me gardner XXL", price: 300, location: "Stockholm", category_id: 35, user_id: 3, remote_photo_url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560351042/bbppg0pdxknvokqpopfn.jpg").save!(validate: false)
Service.create!(id: 4, name: "Hire Basketballer Roller", content: "I roll basketball", price: 600, location: "Copenhagen", category_id: 36, user_id: 4, remote_photo_url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560350967/low1pidcbzv5aftmj4mr.jpg").save!(validate: false)
Service.create!(id: 5, name: "Hire Flying man", content: "Follow me flyinig man", price: 8000, location: "Oslo", category_id: 37, user_id: 1, remote_photo_url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560350428/zk3dynybkqo5eykzu46d.jpg").save!(validate: false)
Service.create!(id: 6, name: "Super Hire Capeman", content: "Capeman for hire", price: 4000, location: "Samba", category_id: 33, user_id: 2, remote_photo_url: "https://res.cloudinary.com/favapps-dx-33/image/upload/v1560347616/flying-dude_izv4od.jpg").save!(validate: false)



# Review.create!(rating: 4, service_id: 2, user_id: 1).save!(validate: false)
# Review.create!(rating: 2, service_id: 1, user_id: 2).save!(validate: false)
# Review.create!(rating: 5, service_id: 2, user_id: 3).save!(validate: false)
# Review.create!(rating: 3, service_id: 1, user_id: 4).save!(validate: false)
# Review.create!(rating: 1, service_id: 2, user_id: 1).save!(validate: false)


Contract.create!(confirmed: "true", start_date: "2018-07-11", end_date: "2020-04-13", user_id: 1, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "false", start_date: "2019-02-01", end_date: "2019-02-16", user_id: 2, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "false", start_date: "2018-03-19", end_date: "2030-01-17", user_id: 3, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2014-12-15", end_date: "2029-02-19", user_id: 4, service_id: 2).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2019-10-25", end_date: "2019-05-10", user_id: 1, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "false", start_date: "2018-03-19", end_date: "2019-01-17", user_id: 3, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2014-12-15", end_date: "2020-02-19", user_id: 4, service_id: 2).save!(validate: false)
Contract.create!(confirmed: "false", start_date: "2019-10-25", end_date: "2021-05-10", user_id: 1, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "false", start_date: "2018-03-19", end_date: "2013-01-17", user_id: 3, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2014-12-15", end_date: "2019-02-19", user_id: 4, service_id: 2).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2019-10-25", end_date: "2059-05-10", user_id: 1, service_id: 1).save!(validate: false)


