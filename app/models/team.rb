class Team < ActiveRecord::Base
  validates_presence_of :nome, message: "Digite o nome da Equipe"
  validates_presence_of :user, message: "Selecione o usuario responsavel pela Equipe"
  belongs_to :user
  attr_accessible :nome, :user_id
end
