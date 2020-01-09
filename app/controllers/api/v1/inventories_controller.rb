class Api::V1::InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
    render json: @inventories
  end

  def show
    @inventory = Inventory.find(params[:id])
    render json: @inventory
  end

  def create
    @inventory = Inventory.create(Inventory_params)
    render json: @inventory
  end

  def update
    @inventory = Inventory.find(params[:id])

      @inventory.update(Inventory_params)

    render json: @inventory
  end

  def destroy
    get_Inventory.destroy
  end

  private

  def get_Inventory
    @inventory = Inventory.find(params[:id])
  end

  def Inventory_params
      params.require(:inventory).permit(:project_id, :tool_id)
  end
end
