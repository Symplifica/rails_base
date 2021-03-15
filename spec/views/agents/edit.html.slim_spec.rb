require 'rails_helper'

RSpec.describe "agents/edit", type: :view do
  before(:each) do
    @agent = assign(:agent, Agent.create!(
      name: "MyString"
    ))
  end

  it "renders the edit agent form" do
    render

    assert_select "form[action=?][method=?]", agent_path(@agent), "post" do

      assert_select "input[name=?]", "agent[name]"
    end
  end
end
