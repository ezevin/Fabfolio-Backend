class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
    render json: @materials
  end

  def show
    @material = Material.find(params[:id])
    render json: @material
  end

  def create
    @material = Material.create(Material_params)
    render json: @material
  end

  def update
    @material = Material.find(params[:id])

      @material.update(Material_params)

    render json: @material
  end

  def destroy
    get_Material.destroy
  end

  private

  def get_Material
    @material = Material.find(params[:id])
  end

  def Material_params
      params.require(:material).permit(:project_id, :supply_id)
  end
end
