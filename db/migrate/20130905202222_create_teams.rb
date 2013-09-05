class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nome
      t.references :user

      t.timestamps
    end
    add_index :teams, :user_id
  end
end
