# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :decimal(10, 2)
#  shop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :shop
  belongs_to :customer
  has_many :line_items
end
