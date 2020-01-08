class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
    render json: @materials
  end

  def show
    @Material = Material.find(params[:id])
    render json: @Material
  end

  def create
    @Material = Material.create(Material_params)
    render json: @Material
  end

  def update
    @Material = Material.find(params[:id])

      @Material.update(Material_params)

    render json: @Material
  end

  def destroy
    get_Material.destroy
  end

  private

  def get_Material
    @Material = Material.find(params[:id])
  end

  def Material_params
      params.require(:Material).permit(:project_id, :supply_id)
  end
end
