require 'rails_helper'

RSpec.describe "tickets/show", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      phone_number: "Phone Number",
      email: "Email",
      category: "Category",
      details: "Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Details/)
  end
end
