class FuncionarioTurno < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :turno
end
