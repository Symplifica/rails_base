require 'rails_helper'

RSpec.describe "table_remotes/index", type: :view do
  before(:each) do
    assign(:table_remotes, [
      TableRemote.create!(
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
      ),
      TableRemote.create!(
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
      )
    ])
  end

  it "renders a list of table_remotes" do
    render
    assert_select "tr>td", text: "Tde".to_s, count: 2
    assert_select "tr>td", text: "Nde".to_s, count: 2
    assert_select "tr>td", text: "Dsrs".to_s, count: 2
    assert_select "tr>td", text: "Dstd".to_s, count: 2
    assert_select "tr>td", text: "Dsnd".to_s, count: 2
    assert_select "tr>td", text: "Dspn".to_s, count: 2
    assert_select "tr>td", text: "Dssn".to_s, count: 2
    assert_select "tr>td", text: "Dspa".to_s, count: 2
    assert_select "tr>td", text: "Dssa".to_s, count: 2
    assert_select "tr>td", text: "Dsnr".to_s, count: 2
    assert_select "tr>td", text: "Fenr".to_s, count: 2
    assert_select "tr>td", text: "Np".to_s, count: 2
    assert_select "tr>td", text: "Novedad Retiro".to_s, count: 2
  end
end
