# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  price      :decimal(10, 2)
#  shop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
end
