class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :shop
  has_many :line_items
end
