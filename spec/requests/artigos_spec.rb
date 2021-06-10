require 'rails_helper'

RSpec.describe "Artigos", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/artigos/show"
      expect(response).to have_http_status(:success)
    end
  end

end
