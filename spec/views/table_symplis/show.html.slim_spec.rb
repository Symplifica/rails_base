require 'rails_helper'

RSpec.describe "table_symplis/show", type: :view do
  before(:each) do
    @table_sympli = assign(:table_sympli, TableSympli.create!(
      dta: "Dta",
      dna: "Dna",
      dte: "Dte",
      dne: "Dne",
      nde: "Nde",
      np: "Np",
      is_arus: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dta/)
    expect(rendered).to match(/Dna/)
    expect(rendered).to match(/Dte/)
    expect(rendered).to match(/Dne/)
    expect(rendered).to match(/Nde/)
    expect(rendered).to match(/Np/)
    expect(rendered).to match(/false/)
  end
end
