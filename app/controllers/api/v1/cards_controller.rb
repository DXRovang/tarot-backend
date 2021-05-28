class Api::V1::CardsController < ApplicationController

  def index
    draw = Draw.find_by(id: params[:draw_id])
    if draw
      render json: draw.cards
    else
      render({json: Card.all})
    end
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
