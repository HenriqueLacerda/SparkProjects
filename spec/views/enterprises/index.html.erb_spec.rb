require 'spec_helper'

describe "enterprises/index" do
  before(:each) do
    assign(:enterprises, [
      stub_model(Enterprise,
        :nome => "Nome",
        :endereco => "Endereco",
        :numero => "Numero",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "",
        :cep => "Cep",
        :logo => ""
      ),
      stub_model(Enterprise,
        :nome => "Nome",
        :endereco => "Endereco",
        :numero => "Numero",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "",
        :cep => "Cep",
        :logo => ""
      )
    ])
  end

  it "renders a list of enterprises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
