require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :carplate => "Carplate",
        :time => "Time",
        :genre => "Genre",
        :amount => 1,
        :cost => 2
      ),
      stub_model(Order,
        :carplate => "Carplate",
        :time => "Time",
        :genre => "Genre",
        :amount => 1,
        :cost => 2
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carplate".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
