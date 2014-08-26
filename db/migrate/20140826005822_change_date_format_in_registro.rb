class ChangeDateFormatInRegistro < ActiveRecord::Migration
  def change
    change_column :registros, :data_hora, :datetime
  end
end
