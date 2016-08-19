require 'spec_helper'

describe "parklots/new" do
  before(:each) do
    assign(:parklot, stub_model(Parklot,
      :title => "MyString",
      :description => "MyString",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "MyString"
    ).as_new_record)
  end

  it "renders new parklot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parklots_path, "post" do
      assert_select "input#parklot_title[name=?]", "parklot[title]"
      assert_select "input#parklot_description[name=?]", "parklot[description]"
      assert_select "input#parklot_num[name=?]", "parklot[num]"
      assert_select "input#parklot_latitude[name=?]", "parklot[latitude]"
      assert_select "input#parklot_longitude[name=?]", "parklot[longitude]"
      assert_select "input#parklot_markerText[name=?]", "parklot[markerText]"
    end
  end
end
