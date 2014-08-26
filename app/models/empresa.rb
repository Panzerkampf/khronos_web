class Empresa < ActiveRecord::Base
  has_many :funcionarios
  has_many :turnos

  validate :nome, presence: true
  validate :cnpj, presence: true, uniqueness: true, :cnpj => true
end
