require 'rails_helper'

RSpec.describe CriadorPokemon, type: :model do
  describe '#criar', vcr: { cassette_name: 'criador_pokemon/criar' } do

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
        expect(subject.send(:nome)).to eq('charizard')
      end
    end
  end
end