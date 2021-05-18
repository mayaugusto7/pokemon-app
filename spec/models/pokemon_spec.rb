require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  describe '#nome_completo' do
    context 'quando possui nome e o id nacional' do
      subject(:pokemon) do
        Pokemon.new(nome: 'Charizard', id_nacional: 6)
      end
      it 'exibe o nome e o id nacional' do
        expect(pokemon.nome_completo).to eq('Charizard - 6')
      end
    end

    context 'quando não possui o nome e o id nacional' do
      it 'é nil' do
        pokemon = Pokemon.new
        expect(pokemon.nome_completo).to be_nil
      end
    end
  end
end
