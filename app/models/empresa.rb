class Empresa < ActiveRecord::Base
  has_many :funcionarios
  has_many :turnos
end
