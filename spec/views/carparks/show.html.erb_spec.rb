require 'spec_helper'

describe "carparks/show" do
  before(:each) do
    @carpark = assign(:carpark, stub_model(Carpark,
      :status => "Status",
      :distance => 1,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    rendered.should match(/1/)
    rendered.should match(/Location/)
  end
end
