class ShopsController < ApplicationController
  def index
    render json: Shop.all, status: :ok
  end
end
