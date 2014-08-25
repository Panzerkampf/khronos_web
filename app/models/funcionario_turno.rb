class FuncionarioTurno < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :turno
end
