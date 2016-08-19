require 'spec_helper'

describe "parkinglots/show" do
  before(:each) do
    @parkinglot = assign(:parkinglot, stub_model(Parkinglot,
      :title => "Title",
      :description => "Description",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "Marker Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Marker Text/)
  end
end
