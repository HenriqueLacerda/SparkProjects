class CreateTaskStats < ActiveRecord::Migration
  def change
    create_table :task_stats do |t|
      t.string :nome
      t.integer :ordem
      t.boolean :finalizada

      t.timestamps
    end
  end
end
