require 'rails_helper'

RSpec.describe "statuses/show", type: :view do
  before(:each) do
    @status = assign(:status, Status.create!(
      name: "Name",
      closed: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
