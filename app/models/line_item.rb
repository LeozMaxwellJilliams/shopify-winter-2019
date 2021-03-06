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

class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :order, presence: true
  validates :product, presence: true
  validates :quantity, presence: true

  def price
    product.price * quantity
  end
end
