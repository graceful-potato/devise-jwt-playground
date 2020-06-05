class ApiController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :authenticate_courier!
  respond_to :json
end
