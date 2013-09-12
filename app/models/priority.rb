class Priority < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :ordem
  attr_accessible :nome, :ordem
end
