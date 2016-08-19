require 'spec_helper'

describe "carparks/edit" do
  before(:each) do
    @carpark = assign(:carpark, stub_model(Carpark,
      :status => "MyString",
      :distance => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit carpark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", carpark_path(@carpark), "post" do
      assert_select "input#carpark_status[name=?]", "carpark[status]"
      assert_select "input#carpark_distance[name=?]", "carpark[distance]"
      assert_select "input#carpark_location[name=?]", "carpark[location]"
    end
  end
end
