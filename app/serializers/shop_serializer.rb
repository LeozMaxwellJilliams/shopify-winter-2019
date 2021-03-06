# == Schema Information
#
# Table name: shops
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :revenue

  has_many :products
  has_many :orders

  private

  def revenue
    object.revenue
  end
end
