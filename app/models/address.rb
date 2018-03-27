class Address < ApplicationRecord
  belongs_to :client

  def to_s
    "#{city}, #{details}"
  end
end
