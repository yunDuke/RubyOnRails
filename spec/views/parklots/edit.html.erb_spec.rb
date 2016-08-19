require 'spec_helper'

describe "parklots/edit" do
  before(:each) do
    @parklot = assign(:parklot, stub_model(Parklot,
      :title => "MyString",
      :description => "MyString",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "MyString"
    ))
  end

  it "renders the edit parklot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parklot_path(@parklot), "post" do
      assert_select "input#parklot_title[name=?]", "parklot[title]"
      assert_select "input#parklot_description[name=?]", "parklot[description]"
      assert_select "input#parklot_num[name=?]", "parklot[num]"
      assert_select "input#parklot_latitude[name=?]", "parklot[latitude]"
      assert_select "input#parklot_longitude[name=?]", "parklot[longitude]"
      assert_select "input#parklot_markerText[name=?]", "parklot[markerText]"
    end
  end
end
