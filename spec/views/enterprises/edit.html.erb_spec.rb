require 'spec_helper'

describe "enterprises/edit" do
  before(:each) do
    @enterprise = assign(:enterprise, stub_model(Enterprise,
      :nome => "MyString",
      :endereco => "MyString",
      :numero => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "",
      :cep => "MyString",
      :logo => ""
    ))
  end

  it "renders the edit enterprise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", enterprise_path(@enterprise), "post" do
      assert_select "input#enterprise_nome[name=?]", "enterprise[nome]"
      assert_select "input#enterprise_endereco[name=?]", "enterprise[endereco]"
      assert_select "input#enterprise_numero[name=?]", "enterprise[numero]"
      assert_select "input#enterprise_bairro[name=?]", "enterprise[bairro]"
      assert_select "input#enterprise_cidade[name=?]", "enterprise[cidade]"
      assert_select "input#enterprise_estado[name=?]", "enterprise[estado]"
      assert_select "input#enterprise_cep[name=?]", "enterprise[cep]"
      assert_select "input#enterprise_logo[name=?]", "enterprise[logo]"
    end
  end
end
