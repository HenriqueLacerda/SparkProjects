require 'spec_helper'

describe "project_types/show" do
  before(:each) do
    @project_type = assign(:project_type, stub_model(ProjectType,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
