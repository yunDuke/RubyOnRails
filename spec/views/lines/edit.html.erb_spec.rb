require 'spec_helper'

describe "lines/edit" do
  before(:each) do
    @line = assign(:line, stub_model(Line,
      :lot_id => 1,
      :order_id => 1
    ))
  end

  it "renders the edit line form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", line_path(@line), "post" do
      assert_select "input#line_lot_id[name=?]", "line[lot_id]"
      assert_select "input#line_order_id[name=?]", "line[order_id]"
    end
  end
end
