require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :carplate => "Carplate",
      :time => "Time",
      :genre => "Genre",
      :amount => 1,
      :cost => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carplate/)
    rendered.should match(/Time/)
    rendered.should match(/Genre/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
