class ClientDetailsController < ApplicationController
  def edit
    @client_details = ClientDetailForm.new
    @client_details.client = Client.find(params[:id])
  end

  def update
    @client_details = ClientDetailForm.new(client_params)
    @client_details.id = params[:id]
    if @client_details.valid?
      logger.warn "TODO: #{@client_details}"
    else
      render :edit
    end
  end

  private

  def client_params
    params.require(:client_detail).permit(:name, :nip, :city, :details)
  end
end
