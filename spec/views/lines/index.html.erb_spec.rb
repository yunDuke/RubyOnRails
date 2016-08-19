require 'spec_helper'

describe "lines/index" do
  before(:each) do
    assign(:lines, [
      stub_model(Line,
        :lot_id => 1,
        :order_id => 2
      ),
      stub_model(Line,
        :lot_id => 1,
        :order_id => 2
      )
    ])
  end

  it "renders a list of lines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
