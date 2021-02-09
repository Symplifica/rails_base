require 'rails_helper'

RSpec.describe "table_remotes/show", type: :view do
  before(:each) do
    @table_remote = assign(:table_remote, TableRemote.create!(
      tde: "Tde",
      nde: "Nde",
      dsrs: "Dsrs",
      dstd: "Dstd",
      dsnd: "Dsnd",
      dspn: "Dspn",
      dssn: "Dssn",
      dspa: "Dspa",
      dssa: "Dssa",
      dsnr: "Dsnr",
      fenr: "Fenr",
      np: "Np",
      novedad_retiro: "Novedad Retiro"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tde/)
    expect(rendered).to match(/Nde/)
    expect(rendered).to match(/Dsrs/)
    expect(rendered).to match(/Dstd/)
    expect(rendered).to match(/Dsnd/)
    expect(rendered).to match(/Dspn/)
    expect(rendered).to match(/Dssn/)
    expect(rendered).to match(/Dspa/)
    expect(rendered).to match(/Dssa/)
    expect(rendered).to match(/Dsnr/)
    expect(rendered).to match(/Fenr/)
    expect(rendered).to match(/Np/)
    expect(rendered).to match(/Novedad Retiro/)
  end
end
