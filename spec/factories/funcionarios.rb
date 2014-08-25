# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :funcionario do
    nome "MyString"
    cpf "MyString"
    rg "MyString"
    data_nascimento "MyString"
    identificacao "MyString"
    empresa nil
  end
end
