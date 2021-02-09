require 'rails_helper'

RSpec.describe "table_symplis/new", type: :view do
  before(:each) do
    assign(:table_sympli, TableSympli.new(
      dta: "MyString",
      dna: "MyString",
      dte: "MyString",
      dne: "MyString",
      nde: "MyString",
      np: "MyString",
      is_arus: false
    ))
  end

  it "renders new table_sympli form" do
    render

    assert_select "form[action=?][method=?]", table_symplis_path, "post" do

      assert_select "input[name=?]", "table_sympli[dta]"

      assert_select "input[name=?]", "table_sympli[dna]"

      assert_select "input[name=?]", "table_sympli[dte]"

      assert_select "input[name=?]", "table_sympli[dne]"

      assert_select "input[name=?]", "table_sympli[nde]"

      assert_select "input[name=?]", "table_sympli[np]"

      assert_select "input[name=?]", "table_sympli[is_arus]"
    end
  end
end
