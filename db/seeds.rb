draw = Draw.create(layout: "one-card", id: 1)
card1 = Card.create(name: "Death", draw_id: 1)
card2 = Card.create(name: "Lovers", draw_id: 1)
card3 = Card.create(name: "World", draw_id: 1)
card4 = Card.create(name: "Moon", draw_id: 1)
card5 = Card.create(name: "Fool", draw_id: 1)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)