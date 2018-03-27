class Client < ApplicationRecord
  has_many :addresses

  def address
    return "" if addresses.empty?
    addresses.where(valid_to: nil).first
  end
end
