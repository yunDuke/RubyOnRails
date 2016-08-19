require 'spec_helper'

describe "parkings/new" do
  before(:each) do
    assign(:parking, stub_model(Parking,
      :title => "MyString",
      :description => "MyString",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "MyString"
    ).as_new_record)
  end

  it "renders new parking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parkings_path, "post" do
      assert_select "input#parking_title[name=?]", "parking[title]"
      assert_select "input#parking_description[name=?]", "parking[description]"
      assert_select "input#parking_num[name=?]", "parking[num]"
      assert_select "input#parking_latitude[name=?]", "parking[latitude]"
      assert_select "input#parking_longitude[name=?]", "parking[longitude]"
      assert_select "input#parking_markerText[name=?]", "parking[markerText]"
    end
  end
end
