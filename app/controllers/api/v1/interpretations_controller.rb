class Api::V1::InterpretationsController < ApplicationController

  def index
    interpretation = Interpretation.all
    render json: interpretation
  end

  def show
    interpretation = Interpretation.find_by(id: params[:id])
    render json: interpretation
  end

  def create
    interpretation = Interpretation.create(interpretation_params)
    render json: interpretation
  end

  private
  def interpretation_params
    params.require(:interpretation).permit(:body, :draw_id)
  end

end
