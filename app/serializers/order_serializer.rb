class OrderSerializer < ActiveModel::Serializer
  attributes :id, :price

  belongs_to :shop
  has_many :line_items

  private

  def price
    object.price
  end
end
