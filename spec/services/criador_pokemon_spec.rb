require 'rails_helper'

RSpec.describe CriadorPokemon, type: :model do
  describe '#criar' do

    before do
      body = '{' \
      '"name": "Charizard"' \
      '}'
      stub_request(:get, 'https://pokeapi.co/api/v2/pokemon/1/')
        .to_return(status: 200, body: body, headers: {})
    end

    let(:criador_pokemon) do
      CriadorPokemon.new(6)
    end

    it 'cria um novo pokemon' do
      expect do
        criador_pokemon.criar
      end.to change { Pokemon.count }.by(1)
    end

    describe 'pokemon criado' do
      before do
        criador_pokemon.criar
      end

      subject do
        Pokemon.last
      end

      it 'possui o nome correto' do
        expect(subject.send(:nome)).to eq('Charizard')
      end
    end
  end
end