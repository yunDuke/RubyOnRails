require 'spec_helper'

describe "lines/show" do
  before(:each) do
    @line = assign(:line, stub_model(Line,
      :lot_id => 1,
      :order_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
