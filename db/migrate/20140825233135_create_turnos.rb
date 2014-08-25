class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.time :horario_entrada
      t.time :horario_saida
      t.string :periodo

      t.timestamps
    end
  end
end
