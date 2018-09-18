class ShopsController < ApplicationController
  def index
    render json: Shop.all, status: :ok
  end

  def show
    render json: Shop.find(params[:id]), status: :ok
  end

  def create
    create_params = params[:shop].permit!
    shop = Shop.create!(create_params)
    render json: shop, status: :ok
  end

  def update
    update_params = params[:shop].permit!
    shop = Shop.find(params[:id])
    shop.update!(update_params)
    render json: shop, status: :ok
  end

  def destroy
    shop = Shop.find(params[:id]).destroy!
    render json: shop, status: :ok
  end
end
