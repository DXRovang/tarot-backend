class Api::V1::CardsController < ApplicationController

  def index
    # cards = RestClient.get 'https://raw.githubusercontent.com/ronniekram/tarot-js-v2/main/front/src/cards.json'
    # card_array = JSON.parse(cards)["cards"]
    # binding.pry
    render({json: Card.all})
  end
end
