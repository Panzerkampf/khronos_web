class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.date :data_hora
      t.string :tipo

      t.timestamps
    end
  end
end
