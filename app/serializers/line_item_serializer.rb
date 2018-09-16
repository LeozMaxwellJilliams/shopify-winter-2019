class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price

  belongs_to :product
  belongs_to :order

  private

  def price
    object.price
  end
end
