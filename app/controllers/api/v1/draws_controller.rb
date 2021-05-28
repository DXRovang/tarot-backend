class Api::V1::DrawsController < ApplicationController

  def index

  end

  def show
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def draw_params
    params.require(:draw).permit(:layout, :reading)
  end

end
