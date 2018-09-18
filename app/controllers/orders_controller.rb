class OrdersController < ApplicationController
  def index
    render json: Order.all, status: :ok
  end

  def show
    render json: Order.find(params[:id]), status: :ok
  end

  def create
    create_params = params[:order].permit!
    order = Order.create!(create_params)
    render json: order, status: :ok
  end

  def update
    update_params = params[:order].permit!
    order = Order.find(params[:id])
    order.update!(update_params)
    render json: order, status: :ok
  end

  def destroy
    order = Order.find(params[:id]).destroy!
    render json: order, status: :ok
  end
end
