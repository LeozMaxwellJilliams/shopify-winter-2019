class LineItemsController < ApplicationController
  def index
    render json: LineItem.all, status: :ok
  end
end
