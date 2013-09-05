class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :taskType
  attr_accessible :dataFinal, :dataInicial, :descricao, :semData, :titulo
end
