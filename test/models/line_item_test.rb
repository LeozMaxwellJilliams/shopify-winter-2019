# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  price      :decimal(10, 2)
#  quantity   :integer
#  product_id :integer
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
