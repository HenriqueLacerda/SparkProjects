class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.strig :estado
      t.string :cep
      t.binary :logo

      t.timestamps
    end
  end
end
