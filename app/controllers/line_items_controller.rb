class LineItemsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: LineItem.all, status: :ok
  end

  def show
    render json: LineItem.find(params[:id]), status: :ok
  end

  def create
    create_params = params[:line_item].permit!
    line_item = LineItem.create!(create_params)
    render json: line_item, status: :ok
  end

  def update
    update_params = params[:line_item].permit!
    line_item = LineItem.find(params[:id])
    line_item.update!(update_params)
    render json: line_item, status: :ok
  end

  def destroy
    line_item = LineItem.find(params[:id]).destroy!
    render json: line_item, status: :ok
  end
end
