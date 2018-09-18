# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  shop_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer
#

class OrderSerializer < ActiveModel::Serializer
  attributes :id, :price

  belongs_to :shop
  has_many :line_items

  private

  def price
    object.price
  end
end
