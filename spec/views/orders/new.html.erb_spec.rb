require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :carplate => "MyString",
      :time => "MyString",
      :genre => "MyString",
      :amount => 1,
      :cost => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_carplate[name=?]", "order[carplate]"
      assert_select "input#order_time[name=?]", "order[time]"
      assert_select "input#order_genre[name=?]", "order[genre]"
      assert_select "input#order_amount[name=?]", "order[amount]"
      assert_select "input#order_cost[name=?]", "order[cost]"
    end
  end
end
