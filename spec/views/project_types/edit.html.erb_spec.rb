require 'spec_helper'

describe "project_types/edit" do
  before(:each) do
    @project_type = assign(:project_type, stub_model(ProjectType,
      :nome => "MyString"
    ))
  end

  it "renders the edit project_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_type_path(@project_type), "post" do
      assert_select "input#project_type_nome[name=?]", "project_type[nome]"
    end
  end
end
