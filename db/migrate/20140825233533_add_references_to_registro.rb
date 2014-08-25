class AddReferencesToRegistro < ActiveRecord::Migration
  def change
    add_reference :registros, :usuario, index: true
  end
end
