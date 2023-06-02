require "open-uri"
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

rupert = Dog.new(name: "Rupert", birthday: "2022-03-12", size: "Large", breed: "Labrador Retriever", address: "Haarlem", user: ben)
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*")
rupert.photo.attach(io: file, filename: "rupert.jpg", content_type: "image/jpeg")
rupert.save

binny   = Dog.new(name: "Binny", birthday: "2019-04-15", size: "Small", breed: "Bichon", address: "Amsterdam-West", user: tom)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Bichon_Fris%C3%A9_-_studdogbichon.jpg/640px-Bichon_Fris%C3%A9_-_studdogbichon.jpg")
binny.photo.attach(io: file, filename: "binny.jpg", content_type: "image/jpeg")
binny.save

buddy   = Dog.new(name: "Buddy", birthday: "2018-05-17", size: "Large", breed: "Great Dane", address: "Amsterdam-Oost", user: brendan)
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/small-fuffy-dog-breeds-1623362663.jpg?crop=1.00xw:0.753xh;0,0.0719xh&resize=1200:*")
buddy.photo.attach(io: file, filename: "buddy.jpg", content_type: "image/jpeg")
buddy.save

mutley  = Dog.new(name: "Mutley", birthday: "2017-06-25", size: "Small", breed: "Alaskan Klee Kai", address: "Amsterdam-Zuid", user: beyonce)
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/golden-retriever-royalty-free-image-506756303-1560962726.jpg?crop=1.00xw:0.756xh;0,0.0756xh&resize=1200:*")
mutley.photo.attach(io: file, filename: "mutley.jpg", content_type: "image/jpeg")
mutley.save

duke    = Dog.new(name: "Duke", birthday: "2016-07-30", size: "Medium", breed: "Cockapoo", address: "Amsterdam-Noord", user: taylor)
file = URI.open("https://www.thesprucepets.com/thmb/hxWjs7evF2hP1Fb1c1HAvRi_Rw0=/2765x0/filters:no_upscale():strip_icc()/chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg")
duke.photo.attach(io: file, filename: "duke.jpg", content_type: "image/jpeg")
duke.save

smokey  = Dog.new(name: "Smokey", birthday: "2020-10-31", size: "Small", breed: "Pug", address: "Utrecht", user: rihanna)
file = URI.open("https://cdn.britannica.com/79/232779-050-6B0411D7/German-Shepherd-dog-Alsatian.jpg")
smokey.photo.attach(io: file, filename: "smokey.jpg", content_type: "image/jpeg")
smokey.save

snowball = Dog.new(name: "Snowball", birthday: "2018-09-23", size: "Large", breed: "Labrador Retriever", address: "Leiden", user: rihanna)
file = URI.open("https://publish.purewow.net/wp-content/uploads/sites/2/2021/06/smallest-dog-breeds-toy-poodle.jpg?fit=728%2C524")
snowball.photo.attach(io: file, filename: "snowball.jpg", content_type: "image/jpeg")
snowball.save

barca = Dog.new(name: "Barca", birthday: "2015-03-19", size: "Medium", breed: "Bulldog", address: "Bos en Lommer", user: ben)
file = URI.open("https://ichef.bbci.co.uk/news/976/cpsprodpb/17638/production/_124800859_gettyimages-817514614.jpg")
barca.photo.attach(io: file, filename: "barca.jpg", content_type: "image/jpeg")
barca.save

skia = Dog.new(name: "Skia", birthday: "2016-07-31", size: "Small", breed: "Shih Tzu", address: "Hoorn", user: tom)
file = URI.open("https://media.npr.org/assets/img/2022/11/23/russian-toy-2-002--059b8a825dac13f92234d65777e6b29b0914e92f-s1100-c50.jpg")
skia.photo.attach(io: file, filename: "skia.jpg", content_type: "image/jpeg")
skia.save

whiskey = Dog.new(name: "Whiskey", birthday: "2022-01-06", size: "Large", breed: "Great Dane", address: "Maastricht", user: brendan)
file = URI.open("https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/20183655/German-Pinscher-standing-near-a-lake.jpg")
whiskey.photo.attach(io: file, filename: "whiskey.jpg", content_type: "image/jpeg")
whiskey.save

cuca = Dog.new(name: "Cuca", birthday: "2018-04-25", size: "Small", breed: "Boston Terrier", address: "Haarlem", user: rihanna)
file = URI.open("https://www.thesprucepets.com/thmb/y4YEErOurgco9QQO-zJ6Ld1yVkQ=/3000x0/filters:no_upscale():strip_icc()/english-dog-breeds-4788340-hero-14a64cf053ca40f78e5bd078b052d97f.jpg")
cuca.photo.attach(io: file, filename: "cuca.jpg", content_type: "image/jpeg")
cuca.save

luna = Dog.new(name: "Luna", birthday: "2020-12-25", size: "Small", breed: "Dachsund", address: "Rotterdam", user: rihanna)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5ElLfEoTtQIyOm38WiEMesfB6mUaP8Dl6g&usqp=CAU")
luna.photo.attach(io: file, filename: "luna.jpg", content_type: "image/jpeg")
luna.save



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
