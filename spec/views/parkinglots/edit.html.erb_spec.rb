require 'spec_helper'

describe "parkinglots/edit" do
  before(:each) do
    @parkinglot = assign(:parkinglot, stub_model(Parkinglot,
      :title => "MyString",
      :description => "MyString",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "MyString"
    ))
  end

  it "renders the edit parkinglot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parkinglot_path(@parkinglot), "post" do
      assert_select "input#parkinglot_title[name=?]", "parkinglot[title]"
      assert_select "input#parkinglot_description[name=?]", "parkinglot[description]"
      assert_select "input#parkinglot_num[name=?]", "parkinglot[num]"
      assert_select "input#parkinglot_latitude[name=?]", "parkinglot[latitude]"
      assert_select "input#parkinglot_longitude[name=?]", "parkinglot[longitude]"
      assert_select "input#parkinglot_markerText[name=?]", "parkinglot[markerText]"
    end
  end
end
