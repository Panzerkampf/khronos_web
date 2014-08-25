class Funcionario < ActiveRecord::Base
  belongs_to :empresa
  has_many :registros
  has_and_belongs_to_many :turnos
end
