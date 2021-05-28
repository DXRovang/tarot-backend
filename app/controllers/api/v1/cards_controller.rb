class Api::V1::CardsController < ApplicationController

  def index
    # cards = RestClient.get 'https://raw.githubusercontent.com/ronniekram/tarot-js-v2/main/front/src/cards.json'
    # card_array = JSON.parse(cards)["cards"]
    # binding.pry
    render({json: Card.all})
  end

  def show
    card = Card.find_by(id: params[:id])
    render json: card
  end

  private
  def card_params
    params.require(:card).permit(
      :name,
      :created_at,
      :draw_id,
      :cardType,
      :summary,
      :image,
      :meaning_up,
      :meaning_rev,
      :desc
    )
  end
end
