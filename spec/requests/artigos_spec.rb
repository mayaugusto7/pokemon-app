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

  describe "POST 'create'" do
    let(:params) do
      {
        artigo: attributes_for(:artigo)
      }
    end

    it 'create a new article' do
      expect do
        post :create, :params => params
      end.to change(Artigo, :count).by(1)
    end
  end
end
