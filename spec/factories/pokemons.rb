FactoryBot.define do
  factory :pokeapi, class: String do
    skip_create

    transient do
      id_nacional { 6 }
      nome { "Charizard" }
      ataque { 84 }
      defesa { 78 }
    end

    initialize_with do
      info = { national_id: id_nacional, name: nome, attack: ataque, defense: defesa }
      JSON.generate(info)
    end
  end

  factory :pokemon do
    id_nacional { 6 }
    nome { "Charizard "}
  end
end
