class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :revenue

  has_many :products
  has_many :orders

  private

  def revenue
    object.revenue
  end
end
