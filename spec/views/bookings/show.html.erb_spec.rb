require 'spec_helper'

describe "bookings/show" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
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
