class RemoveReferencesToRegistro < ActiveRecord::Migration
  def change
    remove_column :registros, :usuario_id
    add_reference :registros, :funcionario, index: true
  end
end
