require 'rails_helper'

RSpec.describe ArtigosController, type: :controller do
  describe "GET 'show'" do
    let!(:artigo) do
      FactoryBot.create(:artigo)
    end

    before do
      get :show, params: { id: artigo.id }
    end

    it 'assigns a artigo' do
      expect(assigns(:artigo)).to eq(artigo)
    end
  end
end
