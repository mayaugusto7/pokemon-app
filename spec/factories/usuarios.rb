FactoryBot.define do
  factory :usuario, aliases: [:autor] do
    nome { "Mauro" }
    email { "mauro@helabs.com.br" }
  end
end
