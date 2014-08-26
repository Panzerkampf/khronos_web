# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :funcionarios_turno, :class => 'FuncionarioTurno' do
    funcionario nil
    turno nil
  end
end
