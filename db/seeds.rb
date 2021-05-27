require ‘rest-client’

cards = RestClient.get 'https://raw.githubusercontent.com/ronniekram/tarot-js-v2/main/front/src/cards.json'

card_array = JSON.parse(cards)["results"]

card_array.each do |card|
  binding.pry
  Card.create(
    name: card["name"]
  )
end
