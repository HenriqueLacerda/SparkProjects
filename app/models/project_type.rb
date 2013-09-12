class ProjectType < ActiveRecord::Base
  validates_presence_of :nome
  attr_accessible :nome
end
