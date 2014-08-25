class AddReferencesToTurno < ActiveRecord::Migration
  def change
    add_reference :turnos, :empresa, index: true
  end
end
