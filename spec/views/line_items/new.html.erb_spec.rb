require 'spec_helper'

describe "line_items/new" do
  before(:each) do
    assign(:line_item, stub_model(LineItem,
      :lot_id => 1,
      :cart_id => 1
    ).as_new_record)
  end

  it "renders new line_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", line_items_path, "post" do
      assert_select "input#line_item_lot_id[name=?]", "line_item[lot_id]"
      assert_select "input#line_item_cart_id[name=?]", "line_item[cart_id]"
    end
  end
end
