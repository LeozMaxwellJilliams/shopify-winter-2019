# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :shop
  has_many :line_items, inverse_of: :order

  def price
    line_items.pluck(:price).inject(0, &:+)
  end
end
