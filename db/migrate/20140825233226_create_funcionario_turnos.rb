class CreateFuncionarioTurnos < ActiveRecord::Migration
  def change
    create_table :funcionario_turnos do |t|
      t.references :usuario, index: true
      t.references :turno, index: true

      t.timestamps
    end
  end
end
