class Team < ActiveRecord::Base
  validates_presence_of :nome, message: "Digite o nome da Equipe"
  validates_presence_of :user, message: "Selecione o usuario responsavel pela Equipe"
  
  has_many :team_members
  has_many :users,
    :through => :team_members
  
  belongs_to :user
  attr_accessible :nome, :user_id, :user_ids
  
end
