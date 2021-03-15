require 'rails_helper'

RSpec.describe "agents/new", type: :view do
  before(:each) do
    assign(:agent, Agent.new(
      name: "MyString"
    ))
  end

  it "renders new agent form" do
    render

    assert_select "form[action=?][method=?]", agents_path, "post" do

      assert_select "input[name=?]", "agent[name]"
    end
  end
end
