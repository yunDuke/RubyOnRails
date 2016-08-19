require 'spec_helper'

describe "bookings/new" do
  before(:each) do
    assign(:booking, stub_model(Booking,
      :carplate => "MyString",
      :time => "MyString",
      :genre => "MyString",
      :amount => 1,
      :cost => 1
    ).as_new_record)
  end

  it "renders new booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookings_path, "post" do
      assert_select "input#booking_carplate[name=?]", "booking[carplate]"
      assert_select "input#booking_time[name=?]", "booking[time]"
      assert_select "input#booking_genre[name=?]", "booking[genre]"
      assert_select "input#booking_amount[name=?]", "booking[amount]"
      assert_select "input#booking_cost[name=?]", "booking[cost]"
    end
  end
end
