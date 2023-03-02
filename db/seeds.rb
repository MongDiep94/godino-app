require "open-uri"


puts "start seeding"
puts "destroy old data"
Dinosaur.destroy_all
User.destroy_all
puts "old data destroyed"

puts 'start seeding users'
# Seeds Users
@nicolas = User.create(first_name: "Nicolas", last_name: "Brien", email: "dmslkdlk@mgmail.com", password: "123456", password_confirmation: "123456")
@mong = User.new(first_name: "Mong", last_name: "Diep",email: "dmslsdkdlk@mgmail.com", password: "123456", password_confirmation: "123456")
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
@tyrannosaurus = Dinosaur.new(name: "Jacky", species: "tyrannosaurus", price: 1000, review: 5, user: @nicolas, weight: "6000", height: "4", element: "earth", age: 66,
character: "passive-agressive", address: "4 Pl. du Louvre, 75001 Paris")
@tyrannosaurus.photo.attach(io: trexphoto, filename: "tyrannosaurus.png", content_type: "image/png")
@tyrannosaurus.save
puts 'dino 1 done'


# Stegosaurus
stegosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/51/Calgary_Zoo_Stegosaurus_02.jpg")
@stegosaurus = Dinosaur.new(name: "Jean-Louis", species: "stegosaurus", price: 900, review: 4, user: @mong, weight: "5500", height: "4", element: "earth", age: 155,
character: "cutie", address: "1 Pl. Jules Joffrin, 75018 Paris")
@stegosaurus.photo.attach(io: stegosaurusphoto, filename: "stegosaurus.png", content_type: "image/png")
@stegosaurus.save
puts 'dino 2 done'


# Triceratops
triceratopsphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/2f/Triceratops_en_el_parque_Sauces_%2820211103_114300%29.jpg")
@triceratops = Dinosaur.new(name: "Kévin", species: "triceratops", price: 800, review: 3, user: @malo, weight: "12000", height: "3", element: "earth", age: 67,
character: "passive-agressive", address: "2 Rue Eugène Spuller, 75003 Paris")
@triceratops.photo.attach(io: triceratopsphoto, filename: "triceratops.png", content_type: "image/png")
@triceratops.save
puts 'dino 3 done'


# Velociraptor
velociraptorphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/0/0c/Velociraptor-by-Salvatore-Rabito-Alc%C3%B3n.jpg")
@velociraptor = Dinosaur.new(name: "Jérem", species: "velociraptor", price: 700, review: 3, user: @justine, weight: "18", height: "1", element: "earth", age: 71,
character: "cutie", address: "8 Rue de la Banque, 75002 Paris")
@velociraptor.photo.attach(io: velociraptorphoto, filename: "velociraptor.png", content_type: "image/png")
@velociraptor.save
puts 'dino 4 done'


# Diplodocus
diplodocusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4d/Diplodocus_Dinopark_Denkendorf.jpg")
@diplodocus = Dinosaur.new(name: "Huguette", species: "diplodocus", price: 800, review: 5, user: @justine, weight: "16000", height: 25, element: "earth", age: 153,
character: "cutie", address: "6 Pl. Gambetta, 75020 Paris")
@diplodocus.photo.attach(io: diplodocusphoto, filename: "diplodocus.png", content_type: "image/png")
@diplodocus.save
puts 'dino 5 done'


# Spinosaurus
spinosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/86/Spinosaurus_life_restoration_with_Onchopristis.jpg")
@spinosaurus = Dinosaur.new(name: "Chantal", species: "spinosaurus", price: 600, review: 2, user: @justine, weight: "6000", height: "15", element: "earth", age: 97,
character: "posh", address: "71 Av. Henri Martin, 75016 Paris")
@spinosaurus.photo.attach(io: spinosaurusphoto, filename: "spinosaurus.png", content_type: "image/png")
@spinosaurus.save
puts 'dino 6 done'


# Brontosaurus
brontosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f1/Calgary_Zoo_Apatosaurus_02.jpg")
@brontosaurus = Dinosaur.new(name: "Marcellin", species: "brontosaurus", price: 800, review: 4, user: @justine, weight: "15000", height: "22", element: "earth", age: 155,
character: "cutie", address: "21 Pl. du Panthéon, 75005 Paris")
@brontosaurus.photo.attach(io: brontosaurusphoto, filename: "brontosaurus.png", content_type: "image/png")
@brontosaurus.save
puts 'dino 7 done'


# Ankylosaurus
ankylosaurusphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/22/Ankylozaur_%28Ankylosaurus%29_-_JuraPark_Baltow_%281%29.JPG")
@ankylosaurus = Dinosaur.new(name: "Janine", species: "ankylosaurus", price: 400, review: 2, user: @justine, weight: "4000", height: "2", element: "earth", age: 66,
character: "shy", address: "2 Pl. Ferdinand Brunot, 75014 Paris")
@ankylosaurus.photo.attach(io: ankylosaurusphoto, filename: "ankylosaurus.png", content_type: "image/png")
@ankylosaurus.save
puts 'dino 8 done'


# Archaeopteryx
archaeopteryxphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f9/Archaeopteryx_NT.jpg")
@archaeopteryx = Dinosaur.new(name: "Roberto", species: "archaeopteryx", price: 200, review: 1, user: @justine, weight: "1", height: "1", element: "air", age: 154,
character: "snob", address: "3 Rue de Lisbonne, 75008 Paris")
@archaeopteryx.photo.attach(io: archaeopteryxphoto, filename: "archaeopteryx.png", content_type: "image/png")
@archaeopteryx.save
puts 'dino 9 done'


# Iguanodon
iguanodonphoto = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/76/Iguanodon_Dinopark.jpg")
@iguanodon = Dinosaur.new(name: "Léon", species: "iguanodon", price: 300, review: 4, user: @justine, weight: "4000", height: "5", element: "earth", age: 133,
character: "shy", address: "1 Pl. d'Italie, 75013 Paris")
@iguanodon.photo.attach(io: iguanodonphoto, filename: "iguanodon.png", content_type: "image/png")
@iguanodon.save
puts 'dino 10 done'



puts 'ALL GOOD'
