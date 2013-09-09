class Project < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :dataInicio
  attr_accessible :dataFinal, :dataInicio, :descricao, :nome
end
