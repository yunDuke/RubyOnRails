require 'spec_helper'

describe "Parkinglots" do
  describe "GET /parkinglots" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get parkinglots_path
      response.status.should be(200)
    end
  end
end
