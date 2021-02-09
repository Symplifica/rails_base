require 'rails_helper'

RSpec.describe "table_symplis/index", type: :view do
  before(:each) do
    assign(:table_symplis, [
      TableSympli.create!(
        dta: "Dta",
        dna: "Dna",
        dte: "Dte",
        dne: "Dne",
        nde: "Nde",
        np: "Np",
        is_arus: false
      ),
      TableSympli.create!(
        dta: "Dta",
        dna: "Dna",
        dte: "Dte",
        dne: "Dne",
        nde: "Nde",
        np: "Np",
        is_arus: false
      )
    ])
  end

  it "renders a list of table_symplis" do
    render
    assert_select "tr>td", text: "Dta".to_s, count: 2
    assert_select "tr>td", text: "Dna".to_s, count: 2
    assert_select "tr>td", text: "Dte".to_s, count: 2
    assert_select "tr>td", text: "Dne".to_s, count: 2
    assert_select "tr>td", text: "Nde".to_s, count: 2
    assert_select "tr>td", text: "Np".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
