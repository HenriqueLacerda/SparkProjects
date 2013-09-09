class Enterprise < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :endereco, :estado, :logo, :nome, :numero
end
