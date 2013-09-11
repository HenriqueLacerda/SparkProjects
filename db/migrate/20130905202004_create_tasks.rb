class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project
      t.references :user
      t.references :taskType
      t.string :titulo
      t.string :descricao
      t.date :dataInicial
      t.date :dataFinal
      t.boolean :semData

      t.timestamps
    end
    add_index :tasks, :project_id
    add_index :tasks, :taskType_id
  end
end
