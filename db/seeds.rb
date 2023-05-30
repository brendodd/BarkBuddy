Dog.destroy_all
User.destroy_all
ben = User.create!(first_name: "Ben", last_name: "Pham", email: "ben@lewagon.com", password: "secret")
tom = User.create!(first_name: "Tom", last_name: "Thompson", email: "tom@lewagon.com", password: "secret")
rupert = Dog.create!(name: "Rupert", birthday: "2022-03-12", size: "Large", breed: "Labrador", address: "Harlem", user: ben)
binny = Dog.create!(name: "Binny", birthday: "2019-04-15", size: "Small", breed: "Bichon", address: "Amsterdam-West", user: tom)
