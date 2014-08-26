class Turno < ActiveRecord::Base
  has_and_belongs_to_many :funcionarios
  belongs_to :empresa

  validate :horario_entrada, presence: true
  validate :horario_saida, presence: true
  validate :periodo, presence: true
end
