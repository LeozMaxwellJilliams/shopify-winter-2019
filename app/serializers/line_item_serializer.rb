# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  product_id :integer
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price

  belongs_to :product
  belongs_to :order

  private

  def price
    object.price
  end
end
