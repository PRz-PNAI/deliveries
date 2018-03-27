class Address < ApplicationRecord
  belongs_to :client

  def to_s
    "#{city}, #{details}"
  end

  def archive!
    self.valid_to = Time.now
    save!
  end
end
