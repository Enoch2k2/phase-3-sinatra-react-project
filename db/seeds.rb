puts "🌱 Seeding spices..."

# Seed your database here
puts "Destroying all data"

Owner.destroy_all
Pet.destroy_all

puts "Seeding Pets..."

john = Owner.create(name: "John")
sarah = Owner.create(name: "Sarah")
rebecca = Owner.create(name: "Rebecca")

garfield = Pet.create({ name: "Garfield", species: "Cat", owner: john })
odie = Pet.create({ name: "Odie", species: "Dog", owner: john })
fido = Pet.create({ name: "Fido", species: "Dog", owner: sarah })
milo = Pet.create({ name: "Milo", species: "Cat", owner: rebecca })
bob = Pet.create({ name: "Bob", species: "DragonDonkey", owner: rebecca })

puts "✅ Done seeding!"
