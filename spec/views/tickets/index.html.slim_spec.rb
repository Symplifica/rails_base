require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        phone_number: "Phone Number",
        email: "Email",
        category: "Category",
        details: "Details"
      ),
      Ticket.create!(
        phone_number: "Phone Number",
        email: "Email",
        category: "Category",
        details: "Details"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Details".to_s, count: 2
  end
end
