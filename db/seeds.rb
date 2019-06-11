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

Service.create!(id: 1, name: "Service Title1", content: "Some content description1", price: 10000, location: "Groningen", category_id: 33, user_id: 1).save!(validate: false)
Service.create!(id: 2, name: "Service Title2", content: "Some content description2", price: 200, location: "Helsingborg", category_id: 34, user_id: 2).save!(validate: false)
Service.create!(id: 3, name: "Service Title3", content: "Some content description3", price: 300, location: "Stockholm", category_id: 35, user_id: 3).save!(validate: false)
Service.create!(id: 4, name: "Service Title4", content: "Some content description4", price: 600, location: "Copenhagen", category_id: 36, user_id: 4).save!(validate: false)
Service.create!(id: 5, name: "Service Title5", content: "Some content description5", price: 8000, location: "Oslo", category_id: 37, user_id: 1).save!(validate: false)
Service.create!(id: 6, name: "Service Title6", content: "Some content description6", price: 4000, location: "Samba", category_id: 33, user_id: 2).save!(validate: false)



Review.create!(rating: 4, service_id: 2, user_id: 1).save!(validate: false)
Review.create!(rating: 2, service_id: 1, user_id: 2).save!(validate: false)
Review.create!(rating: 5, service_id: 2, user_id: 3).save!(validate: false)
Review.create!(rating: 3, service_id: 1, user_id: 4).save!(validate: false)
Review.create!(rating: 1, service_id: 2, user_id: 1).save!(validate: false)


Contract.create!(confirmed: "true", start_date: "2018-07-11", end_date: "2019-04-13", user_id: 1, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2019-02-01", end_date: "2019-02-16", user_id: 2, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2018-03-19", end_date: "2019-01-17", user_id: 3, service_id: 1).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2014-12-15", end_date: "2019-02-19", user_id: 4, service_id: 2).save!(validate: false)
Contract.create!(confirmed: "true", start_date: "2019-10-25", end_date: "2019-05-10", user_id: 1, service_id: 1).save!(validate: false)

