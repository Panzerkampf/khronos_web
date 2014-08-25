class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :data_nascimento
      t.string :identificacao
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
