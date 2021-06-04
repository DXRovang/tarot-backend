class Api::V1::InterpretationsController < ApplicationController
  before_action :set_draw

  def index
    interpretations = @draw.interpretations
    render json: interpretations
  end

  def show
    interpretation = Interpretation.find_by(id: params[:id])
    render json: interpretation
  end

  def create
    # binding.pry
    @interpretation = @draw.interpretations.create(interpretation_params)
    render json: @draw
  end

  private

  def set_draw
    @draw = Draw.find_by(id: params[:draw_id])
  end
  
  def interpretation_params
    params.require(:interpretation).permit(:body, :draw_id)
  end

end
