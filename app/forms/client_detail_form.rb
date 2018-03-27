class ClientDetailForm
  include ActiveModel::Model

  attr_accessor :id, :name, :nip, :city, :details
  validates :name, :nip, :city, :details, presence: true

  def client=(c)
    @id = c.id
    @name = c.name
    @nip = c.nip
    @city = c.address.city
    @details = c.address.details
  end

  def persisted?
    true
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "ClientDetail")
  end
end
