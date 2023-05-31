
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Dog.destroy_all
User.destroy_all

ben = User.create!(first_name: "Ben", last_name: "Pham", email: "ben@lewagon.com", password: "secret")
tom = User.create!(first_name: "Tom", last_name: "Thompson", email: "tom@lewagon.com", password: "secret")
ricky = User.create!(first_name: "Ricky", last_name: "Gervais", email: "ricky@lewagon.com", password: "secret")
beyonce = User.create!(first_name: "Beyonce", last_name: "Knowles", email: "beyonce@lewagon.com", password: "secret")
taylor = User.create!(first_name: "Taylor", last_name: "Swift", email: "taylor@lewagon.com", password: "secret")
rihanna = User.create!(first_name: "Rihanna", last_name: "Rihanna", email: "rihanna@lewagon.com", password: "secret")

rupert = Dog.create!(name: "Rupert", birthday: "2022-03-12", size: "Large", breed: "Labrador", address: "Haarlem", user: ben)
binny = Dog.create!(name: "Binny", birthday: "2019-04-15", size: "Small", breed: "Bichon", address: "Amsterdam-West", user: tom)
buddy = Dog.create!(name: "Buddy", birthday: "2018-05-17", size: "Large", breed: "Great Dane", address: "Amsterdam-Oost", user: ricky)
mutley = Dog.create!(name: "Mutley", birthday: "2017-06-25", size: "Small", breed: "Chihuahua", address: "Amsterdam-Zuid", user: beyonce)
duke = Dog.create!(name: "Duke", birthday: "2016-07-30", size: "Medium", breed: "Cockapoo", address: "Amsterdam-Noord", user: taylor)
smokey = Dog.create!(name: "Smokey", birthday: "2020-10-", size: "Small", breed: "Pug", address: "Utrecht", user: rihanna)
