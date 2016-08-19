require 'spec_helper'

describe "lots/edit" do
  before(:each) do
    @lot = assign(:lot, stub_model(Lot,
      :title => "MyString",
      :description => "MyString",
      :num => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :markerText => "MyString"
    ))
  end

  it "renders the edit lot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lot_path(@lot), "post" do
      assert_select "input#lot_title[name=?]", "lot[title]"
      assert_select "input#lot_description[name=?]", "lot[description]"
      assert_select "input#lot_num[name=?]", "lot[num]"
      assert_select "input#lot_latitude[name=?]", "lot[latitude]"
      assert_select "input#lot_longitude[name=?]", "lot[longitude]"
      assert_select "input#lot_markerText[name=?]", "lot[markerText]"
    end
  end
end
