class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :products
  has_many :orders
end
