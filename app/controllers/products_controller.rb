class ProductsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Product.all, status: :ok
  end

  def show
    render json: Product.find(params[:id]), status: :ok
  end

  def create
    create_params = params[:product].permit!
    product = Product.create!(create_params)
    render json: product, status: :ok
  end

  def update
    update_params = params[:product].permit!
    product = Product.find(params[:id])
    product.update!(update_params)
    render json: product, status: :ok
  end

  def destroy
    product = Product.find(params[:id]).destroy!
    render json: product, status: :ok
  end
end
