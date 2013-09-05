class CreateTaskStats < ActiveRecord::Migration
  def change
    create_table :task_stats do |t|
      t.string :nome
      t.boolean :finalizada

      t.timestamps
    end
  end
end
