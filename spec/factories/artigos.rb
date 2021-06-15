FactoryBot.define do

  factory :artigo do
    sequence(:titulo) { |n|  "Diversas dicas do RSpec #{n}" }
    descricao { "Conteúdo do artigo #{titulo}. Approved: #{aprovado}" }
    autor
    created_at { 2.days.ago }

    trait :aprovado do
      aprovado { true }
    end

    trait :nao_aprovado do
      aprovado { false }
    end

    trait :titulo_maiusculo do
      titulo { 'DIVERSAS DICAS DO RSPEC' }
    end
  end
end
