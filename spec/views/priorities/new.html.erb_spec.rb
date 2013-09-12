require 'spec_helper'

describe "priorities/new" do
  before(:each) do
    assign(:priority, stub_model(Priority,
      :nome => "MyString",
      :ordem => 1
    ).as_new_record)
  end

  it "renders new priority form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", priorities_path, "post" do
      assert_select "input#priority_nome[name=?]", "priority[nome]"
      assert_select "input#priority_ordem[name=?]", "priority[ordem]"
    end
  end
end
