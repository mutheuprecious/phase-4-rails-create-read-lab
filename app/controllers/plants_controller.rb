class PlantsController < ApplicationController
# GET /plants
def index
    plants = Plant.all
    render json: plants
  end

  # GET /plants/:id
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  def create
    new_plant = Plant.create(params_data)
    render json: new_plant, status: :created
  end

  private

  def params_data
    params.permit(:name, :image, :price)
  end
end
