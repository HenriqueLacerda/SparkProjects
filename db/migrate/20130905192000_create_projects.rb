class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :nome
      t.string :descricao
      t.date :dataInicio
      t.date :dataFinal
      t.references :user
      t.string :projetoPrincipal
      t.references :project

      t.timestamps
    end
  end
end
