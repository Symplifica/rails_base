require 'rails_helper'

RSpec.describe "table_remotes/edit", type: :view do
  before(:each) do
    @table_remote = assign(:table_remote, TableRemote.create!(
      tde: "MyString",
      nde: "MyString",
      dsrs: "MyString",
      dstd: "MyString",
      dsnd: "MyString",
      dspn: "MyString",
      dssn: "MyString",
      dspa: "MyString",
      dssa: "MyString",
      dsnr: "MyString",
      fenr: "MyString",
      np: "MyString",
      novedad_retiro: "MyString"
    ))
  end

  it "renders the edit table_remote form" do
    render

    assert_select "form[action=?][method=?]", table_remote_path(@table_remote), "post" do

      assert_select "input[name=?]", "table_remote[tde]"

      assert_select "input[name=?]", "table_remote[nde]"

      assert_select "input[name=?]", "table_remote[dsrs]"

      assert_select "input[name=?]", "table_remote[dstd]"

      assert_select "input[name=?]", "table_remote[dsnd]"

      assert_select "input[name=?]", "table_remote[dspn]"

      assert_select "input[name=?]", "table_remote[dssn]"

      assert_select "input[name=?]", "table_remote[dspa]"

      assert_select "input[name=?]", "table_remote[dssa]"

      assert_select "input[name=?]", "table_remote[dsnr]"

      assert_select "input[name=?]", "table_remote[fenr]"

      assert_select "input[name=?]", "table_remote[np]"

      assert_select "input[name=?]", "table_remote[novedad_retiro]"
    end
  end
end
