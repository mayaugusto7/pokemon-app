class ArtigosController < ApplicationController
  def show
    @artigo = Artigo.find(params[:id])
  end
end
