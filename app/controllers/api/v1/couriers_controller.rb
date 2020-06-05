class Api::V1::CouriersController < ApiController
  def index
    couriers = Courier.all
    render json: couriers
  end
end
