class Api::V1::DrawsController < ApplicationController

  def index
    render({json: Draw.all})
  end

  def show
    draw = Draw.find_by(id: params[:id])
    render json: draw
  end

  def create
    draw = Draw.create(draw_params)
    render json: draw
    # draw = Draw.new(draw_params)
    # if draw.save
    #   render json: draw
    # else 
    #   render json: {error: "Error creating draw"}
    # end
  end

  def destroy
    draw = Draw.find_by(id: params[:id])
    draw.destroy
    render json: Draw.all
  end

  private

  def draw_params
    params.require(:draw).permit(:layout, :reading)
  end

end



def create
  draw = Draw.create(draw_params)
  render json: draw.cards
end

def draw_params
  params.require(:draw).permit(:layout, :reading, :card_ids)
end