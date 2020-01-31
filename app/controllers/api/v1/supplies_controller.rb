class Api::V1::SuppliesController < ApplicationController
  def index
    @supplies = Supply.all
    render json: @supplies
    # .to_json(include: [user_supplies: {only: [:id, :quantity, :material_id, :user_id]}, project_supplies: {only: [:id, :quantity, :material_id, :project_id]}])
  end

  def show
    @supply = Supply.find(params[:id])
    render json: @supply
    # .to_json(include: [user_supplies: {only: [:id, :quantity, :supply_id, :user_id]}, project_supplies: {only: [:id, :quantity,:supply_id, :project_id]}])
  end

  def create
    @supply = Supply.create(supply_params)
    # @user = User.find(params[:user_id])
    #
    # UserSupply.create(user_id: params[:user_id], supply_id: @supply.id)

    render json: @supply
  end

  # def addtoproject
  #   byebug
  #   @supply = Supply.create(supply_params)
  #   @project = Project.find(params[:project_id])
  #   @project.supplies << @supply
  #   render json: @supply
  # end

  def update
    @supply = Supply.find(params[:id])

      @supply.update(supply_params)

    render json: @supply
  end

  def destroy
    get_supply.destroy
    flash[:notice] = "You have deleted this supply"
  end

  private

  def get_supply
    @supply = Supply.find(params[:id])
  end

  def supply_params
      params.require(:supply).permit(:label, :price, :description, :image_url, :place_purchased, :quantity)
  end
end
