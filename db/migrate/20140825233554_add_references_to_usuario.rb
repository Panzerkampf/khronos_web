class AddReferencesToUsuario < ActiveRecord::Migration
  def change
    add_reference :funcionarios, :empresa, index: true
  end
end
