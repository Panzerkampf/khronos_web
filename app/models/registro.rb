class Registro < ActiveRecord::Base
  belongs_to :funcionario

  validate :data_hora, presence: true
  validate :tipo, presence: true
end
