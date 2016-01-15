require "rails_helper"

RSpec.describe TankProductCompatibilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tank_product_compatibilities").to route_to("tank_product_compatibilities#index")
    end

    it "routes to #new" do
      expect(:get => "/tank_product_compatibilities/new").to route_to("tank_product_compatibilities#new")
    end

    it "routes to #show" do
      expect(:get => "/tank_product_compatibilities/1").to route_to("tank_product_compatibilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tank_product_compatibilities/1/edit").to route_to("tank_product_compatibilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tank_product_compatibilities").to route_to("tank_product_compatibilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tank_product_compatibilities/1").to route_to("tank_product_compatibilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tank_product_compatibilities/1").to route_to("tank_product_compatibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tank_product_compatibilities/1").to route_to("tank_product_compatibilities#destroy", :id => "1")
    end

  end
end
