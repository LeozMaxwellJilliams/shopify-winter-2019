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

class Product < ApplicationRecord
  belongs_to :shop
  has_many :line_items, inverse_of: :product
end
