require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  describe '#nome_completo' do
    let(:pokemon) do
      build_stubbed(:pokemon)
    end

    subject do
      pokemon.nome_completo
    end

    it 'exibe o nome e o id nacional' do
      expect(subject).to eq('Charizard - 6')
    end
  end
end
