require "spec_helper"

describe CarparksController do
  describe "routing" do

    it "routes to #index" do
      get("/carparks").should route_to("carparks#index")
    end

    it "routes to #new" do
      get("/carparks/new").should route_to("carparks#new")
    end

    it "routes to #show" do
      get("/carparks/1").should route_to("carparks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/carparks/1/edit").should route_to("carparks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/carparks").should route_to("carparks#create")
    end

    it "routes to #update" do
      put("/carparks/1").should route_to("carparks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/carparks/1").should route_to("carparks#destroy", :id => "1")
    end

  end
end
