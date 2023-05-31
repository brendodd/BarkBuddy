puts "Clearing database... 🧹"

Review.destroy_all
Booking.destroy_all
Dog.destroy_all
User.destroy_all

puts "Creating users... 👤"

ben     = User.create!(first_name: "Ben", last_name: "Pham", email: "ben@lewagon.com", password: "secret")
tom     = User.create!(first_name: "Tom", last_name: "Thompson", email: "tom@lewagon.com", password: "secret")
brendan = User.create!(first_name: "Ricky", last_name: "Gervais", email: "ricky@lewagon.com", password: "secret")
beyonce = User.create!(first_name: "Beyonce", last_name: "Knowles", email: "beyonce@lewagon.com", password: "secret")
taylor  = User.create!(first_name: "Taylor", last_name: "Swift", email: "taylor@lewagon.com", password: "secret")
rihanna = User.create!(first_name: "Rihanna", last_name: "Rihanna", email: "rihanna@lewagon.com", password: "secret")

puts "Successfully created #{User.count} users"

puts "Creating dogs... 🐕"

rupert  = Dog.create!(name: "Rupert", birthday: "2022-03-12", size: "Large", breed: "Labrador Retriever", address: "Harlem", user: ben)
binny   = Dog.create!(name: "Binny", birthday: "2019-04-15", size: "Small", breed: "Bichon", address: "Amsterdam-West", user: tom)
buddy   = Dog.create!(name: "Buddy", birthday: "2018-05-17", size: "Large", breed: "Great Dane", address: "Amsterdam-Oost", user: brendan)
mutley  = Dog.create!(name: "Mutley", birthday: "2017-06-25", size: "Small", breed: "Alaskan Klee Kai", address: "Amsterdam-Zuid", user: beyonce)
duke    = Dog.create!(name: "Duke", birthday: "2016-07-30", size: "Medium", breed: "Cockapoo", address: "Amsterdam-Noord", user: taylor)
smokey  = Dog.create!(name: "Smokey", birthday: "2020-10-31", size: "Small", breed: "Pug", address: "Utrecht", user: rihanna)
Dog.create!(name: "Snowball", birthday: "2018-09-23", size: "Large", breed: "Labrador Retriever", address: "Barcelona", user: rihanna)
Dog.create!(name: "Barca", birthday: "2015-03-19", size: "Medium", breed: "Bulldog", address: "Bos en Lommer", user: ben)
Dog.create!(name: "Skia", birthday: "2016-07-31", size: "Small", breed: "Shih Tzu", address: "Hoorn", user: tom)
Dog.create!(name: "Whiskey", birthday: "2022-01-06", size: "Large", breed: "Great Dane", address: "Maastricht", user: brendan)
Dog.create!(name: "Cuca", birthday: "2018-04-25", size: "Small", breed: "Boston Terrier", address: "Haarlem", user: rihanna)
Dog.create!(name: "Luna", birthday: "2020-12-25", size: "Small", breed: "Dachsund", address: "Rotterdam", user: rihanna)

puts "Successfully created #{Dog.count} dogs"

puts "Creating bookings... 📖"

booking_ben = Booking.create!(start_date: "2023-06-12", end_date: "2023-06-19", dog: rupert, user: ben, status: "Booked")
booking_tom = Booking.create!(start_date: "2023-05-24", end_date: "2023-05-31", dog: binny, user: tom, status: "Booked")
booking_brendan = Booking.create!(start_date: "2023-06-14", end_date: "2023-06-17", dog: buddy, user: brendan, status: "Booked")
booking_beyonce = Booking.create!(start_date: "2023-07-12", end_date: "2023-07-26", dog: mutley, user: beyonce, status: "Booked")
booking_taylor = Booking.create!(start_date: "2023-06-02", end_date: "2023-06-08", dog: duke, user: taylor, status: "Booked")
booking_rihanna = Booking.create!(start_date: "2023-06-20", end_date: "2023-06-28", dog: smokey, user: rihanna, status: "Booked")

puts "Successfully created #{Booking.count} bookings"

puts "Creating reviews... ⭐"

Review.create!(comment: "I had the pleasure of dog-sitting this adorable pup, and I must say, they were an absolute joy to be around! They had such a friendly and playful personality, and we had a great time going for walks and playing fetch together.", rating: 5, user: ben, booking: booking_ben)
Review.create!(comment: "I recently had the opportunity to dog-sit this lovely canine companion, and they quickly became my new best friend! They were well-behaved, obedient, and always excited to learn new tricks. It was a delight spending time with them.", rating: 5, user: tom, booking: booking_tom)
Review.create!(comment: "I had the pleasure of taking care of this sweet dog for a few days, and I can confidently say they are one of the most affectionate and cuddly dogs I've ever encountered. They loved snuggling up on the couch and would give the best puppy kisses!", rating: 5, user: brendan, booking: booking_brendan)
Review.create!(comment: "During my dog-sitting experience, I had the pleasure of looking after this energetic and playful dog. They had an incredible amount of energy and loved going for long walks and playing fetch. We had a blast together!", rating: 5, user: beyonce, booking: booking_beyonce)
Review.create!(comment: "I had an amazing time dog-sitting this intelligent and well-mannered dog. They were quick to pick up commands and were a breeze to train. Their friendly nature made it a breeze to introduce them to new people and other dogs.", rating: 5, user: taylor, booking: booking_taylor)
Review.create!(comment: "I recently had the opportunity to dog-sit this beautiful and gentle dog. They had a calm and relaxed demeanor, which made them a perfect companion for cozy evenings and quiet walks in the park. They were an absolute pleasure to take care of.", rating: 5, user: rihanna, booking: booking_rihanna)

puts "Successfully created #{Review.count} reviews"
