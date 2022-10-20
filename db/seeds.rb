puts "🌱 Seeding spices..."

# Seed your database here

# Movie.create(title: "The Matrix", description: "We're in a giant computer.")
# Movie.create(title: "The Matrix 2", description: "Get us out, were still stuck in a computer.")

# neo = Character.create(name: "Neo", bio: "The one! Also formally known as Mr. Anderson")
# morphius = Character.create(name: "Morphius", bio: "The other one! Who showed Neo the way!")
# neo = Character.find_by(name: "Neo", bio: "The one! Also formally known as Mr. Anderson")
# morphius = Character.find_by(name: "Morphius", bio: "The other one! Who showed Neo the way!")

second_morphius = Character.create(name: "Second Morphius", bio: "The imposter!")


# Movie.first.update(character_ids: [neo.id, morphius.id])
# Movie.second.update(character_ids: [neo.id, morphius.id])
# Movie.third.update(character_ids: [neo.id, morphius.id])
Movie.fourth.update(character_ids: Movie.fourth.character_ids.concat([second_morphius.id]))

puts "✅ Done seeding!"
