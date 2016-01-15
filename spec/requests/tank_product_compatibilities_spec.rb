require 'rails_helper'

RSpec.describe "TankProductCompatibilities", type: :request do
  describe "GET /tank_product_compatibilities" do
    it "works! (now write some real specs)" do
      get tank_product_compatibilities_path
      expect(response).to have_http_status(200)
    end
  end
end
