require 'spec_helper'

describe "carparks/index" do
  before(:each) do
    assign(:carparks, [
      stub_model(Carpark,
        :status => "Status",
        :distance => 1,
        :location => "Location"
      ),
      stub_model(Carpark,
        :status => "Status",
        :distance => 1,
        :location => "Location"
      )
    ])
  end

  it "renders a list of carparks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
