require 'spec_helper'

describe "lines/new" do
  before(:each) do
    assign(:line, stub_model(Line,
      :lot_id => 1,
      :order_id => 1
    ).as_new_record)
  end

  it "renders new line form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lines_path, "post" do
      assert_select "input#line_lot_id[name=?]", "line[lot_id]"
      assert_select "input#line_order_id[name=?]", "line[order_id]"
    end
  end
end
