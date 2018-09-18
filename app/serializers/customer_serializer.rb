# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :orders
end
