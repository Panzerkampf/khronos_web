class Funcionario < ActiveRecord::Base
  belongs_to :empresa
  has_many :registros
  has_and_belongs_to_many :turnos

  validate :nome, presence: true
  usar_como_cpf :cpf
  validate :cpf, presence: true, uniqueness: true
  validate :rg, presence: true, numericality: true
end
