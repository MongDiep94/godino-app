require "open-uri"


puts "start seeding"
puts "destroy old data"
Dinosaur.destroy_all
User.destroy_all
puts "old data destroyed"

puts 'start seeding users'
# Seeds Users
@nicolas = User.create(first_name: "Steven", last_name: "Spielberg", email: "spielberg@spielberg.com", password: "123456", password_confirmation: "123456")
@mong = User.new(first_name: "Mong", last_name: "Diep", email: "dmslsdkdlk@mgmail.com", password: "123456", password_confirmation: "123456")
@mong.save
@malo = User.new(first_name: "Malo", last_name: "Bobrowska", email: "dmlkdlk@mgmail.com", password: "123456", password_confirmation: "123456")
@malo.save
@justine = User.new(first_name: "Justine", last_name: "Carles",email: "justine@test.com", password: "coucou", password_confirmation: "coucou")
@justine.save
puts 'seeding users done'

# Seeds Dinosaurs
puts 'start seeding dinos'

# Tyrannosaurus Rex
trexphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/7e/Tyrannosaurus_-_geograph.org.uk_-_4010940.jpg")
@tyrannosaurus = Dinosaur.new(name: "Jacky", species: "tyrannosaurus", price: 1000, rating: 5, review: "super, what a f***** animal!!", user: @nicolas, weight: "6000", height: "4", element: "earth", age: 66,
character: "passive-agressive", address: "4 Pl. du Louvre, 75001 Paris")
@tyrannosaurus.photo.attach(io: trexphoto, filename: "tyrannosaurus.png", content_type: "image/png")
@tyrannosaurus.save
puts 'dino 1 done'


# Stegosaurus
stegosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/51/Calgary_Zoo_Stegosaurus_02.jpg")
@stegosaurus = Dinosaur.new(name: "Jean-Louis", species: "stegosaurus", price: 900, rating: 5, review: "amazing little baby", user: @mong, weight: "5500", height: "4", element: "earth", age: 155,
character: "cutie", address: "1 Pl. Jules Joffrin, 75018 Paris")
@stegosaurus.photo.attach(io: stegosaurusphoto, filename: "stegosaurus.png", content_type: "image/png")
@stegosaurus.save
puts 'dino 2 done'


# Triceratops
triceratopsphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/2f/Triceratops_en_el_parque_Sauces_%2820211103_114300%29.jpg")
@triceratops = Dinosaur.new(name: "Kévin", species: "triceratops", price: 800, rating: 4, review: "cute little bestiole", user: @malo, weight: "12000", height: "3", element: "earth", age: 67,
character: "passive-agressive", address: "2 Rue Eugène Spuller, 75003 Paris")
@triceratops.photo.attach(io: triceratopsphoto, filename: "triceratops.png", content_type: "image/png")
@triceratops.save
puts 'dino 3 done'


# Velociraptor
velociraptorphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/0c/Velociraptor-by-Salvatore-Rabito-Alc%C3%B3n.jpg")
@velociraptor = Dinosaur.new(name: "Jérem", species: "velociraptor", price: 700, rating: 3, review: "a bit too speedy", user: @justine, weight: "18", height: "1", element: "earth", age: 71,
character: "cutie", address: "8 Rue de la Banque, 75002 Paris")
@velociraptor.photo.attach(io: velociraptorphoto, filename: "velociraptor.png", content_type: "image/png")
@velociraptor.save
puts 'dino 4 done'


# Diplodocus
diplodocusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4d/Diplodocus_Dinopark_Denkendorf.jpg")
@diplodocus = Dinosaur.new(name: "Huguette", species: "diplodocus", price: 800, rating: 1, review: "she ate all my plantes d'intérieur, what a f***** animal!!", user: @justine, weight: "16000", height: 25, element: "earth", age: 153,
character: "cutie", address: "6 Pl. Gambetta, 75020 Paris")
@diplodocus.photo.attach(io: diplodocusphoto, filename: "diplodocus.png", content_type: "image/png")
@diplodocus.save
puts 'dino 5 done'


# Spinosaurus
spinosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/86/Spinosaurus_life_restoration_with_Onchopristis.jpg")
@spinosaurus = Dinosaur.new(name: "Chantal", species: "spinosaurus", price: 600, rating: 3, review: "fast and furious", user: @justine, weight: "6000", height: "15", element: "earth", age: 97,
character: "posh", address: "71 Av. Henri Martin, 75016 Paris")
@spinosaurus.photo.attach(io: spinosaurusphoto, filename: "spinosaurus.png", content_type: "image/png")
@spinosaurus.save
puts 'dino 6 done'


# Brontosaurus
brontosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f1/Calgary_Zoo_Apatosaurus_02.jpg")
@brontosaurus = Dinosaur.new(name: "Marcellin", species: "brontosaurus", price: 800, rating: 5, review: "loved the ride!!", user: @justine, weight: "15000", height: "22", element: "earth", age: 155,
character: "cutie", address: "21 Pl. du Panthéon, 75005 Paris")
@brontosaurus.photo.attach(io: brontosaurusphoto, filename: "brontosaurus.png", content_type: "image/png")
@brontosaurus.save
puts 'dino 7 done'


# Ankylosaurus
ankylosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/22/Ankylozaur_%28Ankylosaurus%29_-_JuraPark_Baltow_%281%29.JPG")
@ankylosaurus = Dinosaur.new(name: "Janine", species: "ankylosaurus", price: 400, rating: 4, review: "fantastic experience, but I am a bit ankylosé", user: @justine, weight: "4000", height: "2", element: "earth", age: 66,
character: "shy", address: "2 Pl. Ferdinand Brunot, 75014 Paris")
@ankylosaurus.photo.attach(io: ankylosaurusphoto, filename: "ankylosaurus.png", content_type: "image/png")
@ankylosaurus.save
puts 'dino 8 done'


# Archaeopteryx
archaeopteryxphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f9/Archaeopteryx_NT.jpg")
@archaeopteryx = Dinosaur.new(name: "Roberto", species: "archaeopteryx", price: 200, rating: 5, review: "Archie is a nice pet", user: @justine, weight: "1", height: "1", element: "air", age: 154,
character: "snob", address: "3 Rue de Lisbonne, 75008 Paris")
@archaeopteryx.photo.attach(io: archaeopteryxphoto, filename: "archaeopteryx.png", content_type: "image/png")
@archaeopteryx.save
puts 'dino 9 done'


# Iguanodon
iguanodonphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/76/Iguanodon_Dinopark.jpg")
@iguanodon = Dinosaur.new(name: "Léon", species: "iguanodon", price: 300, rating: 4, review: "Léon is my bestie", user: @justine, weight: "4000", height: "5", element: "earth", age: 133,
character: "shy", address: "1 Pl. d'Italie, 75013 Paris")
@iguanodon.photo.attach(io: iguanodonphoto, filename: "iguanodon.png", content_type: "image/png")
@iguanodon.save
puts 'dino 10 done'

# Seeds Bookings
puts 'start seeding bookings'
@booking1 = Booking.create(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Pending", rating: "5", start_date: "03/02/2023", end_date: "04/07/2032")
@booking2 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Pending", rating: "5", start_date: "03/02/2023", end_date: "04/07/2032")
@booking2.save
@booking3 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Denied", rating: "3", start_date: "07/03/2023", end_date: "01/04/2024")
@booking3.save
@booking4 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Accepted", rating: "2", start_date: "01/12/2022", end_date: "01/15/2022")
@booking4.save
@booking5 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Accepted", rating: "1", start_date: "02/03/2022", end_date: "02/14/2022")
@booking5.save
@booking6 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Pending", rating: "5", start_date: "05/28/2023", end_date: "05/30/2023")
@booking6.save
@booking7 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Pending", rating: "5", start_date: "01/23/2023", end_date: "01/25/2023")
@booking7.save
@booking8 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Accepted", rating: "5", start_date: "03/15/2023", end_date: "04/01/2023")
@booking8.save
@booking9 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Pending", rating: "4", start_date: "04/02/2023", end_date: "04/04/2023")
@booking9.save
@booking10 = Booking.new(user_id: User.all.sample.id, dinosaur_id: Dinosaur.all.sample.id, status: "Pending", rating: "4", start_date: "05/05/2023", end_date: "05/21/2023")
@booking10.save

puts 'seeding bookings done'

# Seeds Reviews
puts 'start seeding reviews'
@review1 = Review.create(dinosaur_id: Dinosaur.all.sample.id, content: "My bestie!")
@review2 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "My bestie!")
@review2.save
@review3 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Loved the ride!")
@review3.save
@review4 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "A bit too speedy")
@review4.save
@review5 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "What a f***** animal !")
@review5.save
@review6 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Amazing friend")
@review6.save
@review7 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "We are expecting a baby")
@review7.save
@review8 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: " Sooooo cool, I wish I could bring it back to NYC")
@review8.save
@review9 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "OMG! best experience ever")
@review9.save
@review10 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "I felt a special connection and we planned to go on a yoga retreat")
@review10.save
puts '10 reviews generated, waiting for 10 more'
@review11 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "We kept in touch after the ride and became friends")
@review11.save
@review13 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Ate all my plantes d'intérieur, I hated it")
@review13.save
@review14 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Too aggressive. I registered him for a non-violent communication class")
@review14.save
@review15 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Bumpy ride, but a cool one")
@review15.save
@review16 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Lots of cuddling")
@review16.save
@review17 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Need to brush her teeths more often")
@review17.save
@review18 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: " Not a vegan")
@review18.save
@review19 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: " I will miss you, lets catch up at Coachella")
@review19.save
@review20 = Review.new(dinosaur_id: Dinosaur.all.sample.id, content: "Our date went really well")
@review20.save

puts 'seeding reviews done'

puts 'ALL GOOD'
