class ClientDetailsUpdater
  def initialize(client_details)
    @client_details = client_details
  end

  def call
    ActiveRecord::Base.transaction do
      save_client
      update_address
    end
  end

  private

  def save_client
    client.save!
  end

  def update_address
    new_address = Address.new(city: @client_details.city,
                              details: @client_details.details)
    address.archive!
    client.addresses << new_address
  end



  def client
    return @client unless @client.nil?
    @client = Client.find @client_details.id
    @client.name = @client_details.name
    @client.nip = @client_details.nip
    @client
  end

  def address
    @address ||= client.address
  end
end
