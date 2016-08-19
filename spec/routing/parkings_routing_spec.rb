require "spec_helper"

describe ParkingsController do
  describe "routing" do

    it "routes to #index" do
      get("/parkings").should route_to("parkings#index")
    end

    it "routes to #new" do
      get("/parkings/new").should route_to("parkings#new")
    end

    it "routes to #show" do
      get("/parkings/1").should route_to("parkings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parkings/1/edit").should route_to("parkings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parkings").should route_to("parkings#create")
    end

    it "routes to #update" do
      put("/parkings/1").should route_to("parkings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parkings/1").should route_to("parkings#destroy", :id => "1")
    end

  end
end
