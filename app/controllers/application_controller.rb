class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token  # when im using the system through an iframe there is no way to know whoe the request belongs to

  before_action :allow_iframe_requests
  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
end
