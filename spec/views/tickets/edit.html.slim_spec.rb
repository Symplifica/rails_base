require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      phone_number: "MyString",
      email: "MyString",
      category: "MyString",
      details: "MyString"
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input[name=?]", "ticket[phone_number]"

      assert_select "input[name=?]", "ticket[email]"

      assert_select "input[name=?]", "ticket[category]"

      assert_select "input[name=?]", "ticket[details]"
    end
  end
end
