class CreateFuncionariosTurnos < ActiveRecord::Migration
  def change
    create_table :funcionarios_turnos do |t|
      t.references :funcionario, index: true
      t.references :turno, index: true

      t.timestamps
    end
  end
end
