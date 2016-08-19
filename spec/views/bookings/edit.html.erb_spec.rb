require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :carplate => "MyString",
      :time => "MyString",
      :genre => "MyString",
      :amount => 1,
      :cost => 1
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do
      assert_select "input#booking_carplate[name=?]", "booking[carplate]"
      assert_select "input#booking_time[name=?]", "booking[time]"
      assert_select "input#booking_genre[name=?]", "booking[genre]"
      assert_select "input#booking_amount[name=?]", "booking[amount]"
      assert_select "input#booking_cost[name=?]", "booking[cost]"
    end
  end
end
