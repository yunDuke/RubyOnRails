require 'spec_helper'

describe "parklots/index" do
  before(:each) do
    assign(:parklots, [
      stub_model(Parklot,
        :title => "Title",
        :description => "Description",
        :num => 1,
        :latitude => 1.5,
        :longitude => 1.5,
        :markerText => "Marker Text"
      ),
      stub_model(Parklot,
        :title => "Title",
        :description => "Description",
        :num => 1,
        :latitude => 1.5,
        :longitude => 1.5,
        :markerText => "Marker Text"
      )
    ])
  end

  it "renders a list of parklots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Marker Text".to_s, :count => 2
  end
end
