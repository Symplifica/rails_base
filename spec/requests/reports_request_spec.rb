require 'rails_helper'

RSpec.describe "Reports", type: :request do

  describe "GET /tipificacion" do
    it "returns http success" do
      get "/reports/tipificacion"
      expect(response).to have_http_status(:success)
    end
  end

end
