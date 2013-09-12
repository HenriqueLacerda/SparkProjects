class CreateProjectsProjects < ActiveRecord::Migration
  def change
    create_table :projects_projects do |t|
      t.integer :project_id
      t.integer :subproject_id
      t.timestamps
    end
  end
end