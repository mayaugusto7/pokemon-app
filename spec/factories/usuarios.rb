FactoryBot.define do
  factory :usuario, aliases: [:autor] do
    nome { "Mauro" }
    email { "mauro@helabs.com.br" }

    trait :com_artigo do
      transient do
        total_de_artigos { 3 } # transient field
      end
      after(:create) do |usuario, evaluator|
        # create(:artigo, autor: usuario)
        create_list(:artigo, evaluator.total_de_artigos, autor: usuario)
      end
    end
  end
end
