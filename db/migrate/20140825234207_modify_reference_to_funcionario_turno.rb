class ModifyReferenceToFuncionarioTurno < ActiveRecord::Migration
  def change
    remove_column :funcionario_turnos, :usuario_id
    add_reference :funcionario_turnos, :funcionario, index: true
  end
end
