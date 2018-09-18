class CustomersController < ApplicationController
  def index
    render json: Customer.all, status: :ok
  end

  def show
    render json: Customer.find(params[:id]), status: :ok
  end

  def create
    create_params = params[:customer].permit!
    customer = Customer.create!(create_params)
    render json: customer, status: :ok
  end

  def update
    update_params = params[:customer].permit!
    customer = Customer.find(params[:id])
    customer.update!(update_params)
    render json: customer, status: :ok
  end

  def destroy
    customer = Customer.find(params[:id]).destroy!
    render json: customer, status: :ok
  end
end
