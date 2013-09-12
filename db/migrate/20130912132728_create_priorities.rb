class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :nome
      t.integer :ordem

      t.timestamps
    end
  end
end
