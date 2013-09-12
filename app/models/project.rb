class Project < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :dataInicio
  belongs_to :projectType
  
  has_many :subproject, class_name: "Project", foreign_key: "subproject_id"
  belongs_to :subproject, class_name: "Project"
  
  attr_accessible :dataFinal, :dataInicio, :descricao, :nome, :projectType_id, :user
end
