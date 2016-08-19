require 'spec_helper'

describe "parkinglots/new" do
  before(:each) do
    assign(:parkinglot, stub_model(Parkinglot,
      :title => "MyString",
      :description => "MyString",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "MyString"
    ).as_new_record)
  end

  it "renders new parkinglot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parkinglots_path, "post" do
      assert_select "input#parkinglot_title[name=?]", "parkinglot[title]"
      assert_select "input#parkinglot_description[name=?]", "parkinglot[description]"
      assert_select "input#parkinglot_num[name=?]", "parkinglot[num]"
      assert_select "input#parkinglot_latitude[name=?]", "parkinglot[latitude]"
      assert_select "input#parkinglot_longitude[name=?]", "parkinglot[longitude]"
      assert_select "input#parkinglot_markerText[name=?]", "parkinglot[markerText]"
    end
  end
end
