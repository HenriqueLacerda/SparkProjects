require 'spec_helper'

describe "priorities/show" do
  before(:each) do
    @priority = assign(:priority, stub_model(Priority,
      :nome => "Nome",
      :ordem => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/1/)
  end
end
