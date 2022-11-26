class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, except: [ :created_at, :updated_at ]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    
    if cheese
      render json: cheese
    else
      render json: { error: "Cheese not found" }, status: 400
    end

  end

end
