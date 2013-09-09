require 'spec_helper'

describe "enterprises/show" do
  before(:each) do
    @enterprise = assign(:enterprise, stub_model(Enterprise,
      :nome => "Nome",
      :endereco => "Endereco",
      :numero => "Numero",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "",
      :cep => "Cep",
      :logo => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Numero/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(//)
    rendered.should match(/Cep/)
    rendered.should match(//)
  end
end
