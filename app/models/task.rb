class Task < ActiveRecord::Base
  validates_presence_of :project
  validates_presence_of :taskType
  validates_presence_of :titulo
  belongs_to :project
  belongs_to :taskType
  belongs_to :priority
  belongs_to :customer
  belongs_to :user
  attr_accessible :project_id, :taskType_id, :priority_id, :customer_id, :user_id, :dataFinal, :dataInicial, :descricao, :semData, :titulo, :ambiente
end
