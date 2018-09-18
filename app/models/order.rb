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

class Order < ApplicationRecord
  belongs_to :shop
  belongs_to :customer
  has_many :line_items, inverse_of: :order

  def price
    line_items.sum(&:price)
  end
end
