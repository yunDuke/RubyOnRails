require "spec_helper"

describe ParklotsController do
  describe "routing" do

    it "routes to #index" do
      get("/parklots").should route_to("parklots#index")
    end

    it "routes to #new" do
      get("/parklots/new").should route_to("parklots#new")
    end

    it "routes to #show" do
      get("/parklots/1").should route_to("parklots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parklots/1/edit").should route_to("parklots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parklots").should route_to("parklots#create")
    end

    it "routes to #update" do
      put("/parklots/1").should route_to("parklots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parklots/1").should route_to("parklots#destroy", :id => "1")
    end

  end
end
