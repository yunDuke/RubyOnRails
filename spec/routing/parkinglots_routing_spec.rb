require "spec_helper"

describe ParkinglotsController do
  describe "routing" do

    it "routes to #index" do
      get("/parkinglots").should route_to("parkinglots#index")
    end

    it "routes to #new" do
      get("/parkinglots/new").should route_to("parkinglots#new")
    end

    it "routes to #show" do
      get("/parkinglots/1").should route_to("parkinglots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parkinglots/1/edit").should route_to("parkinglots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parkinglots").should route_to("parkinglots#create")
    end

    it "routes to #update" do
      put("/parkinglots/1").should route_to("parkinglots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parkinglots/1").should route_to("parkinglots#destroy", :id => "1")
    end

  end
end
