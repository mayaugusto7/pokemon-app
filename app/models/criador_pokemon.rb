require 'uri'
require 'net/http'

class CriadorPokemon
  def initialize(id_nacional)
    @id_nacional = id_nacional
    cria_info
  end

  def criar
    Pokemon.create(nome: nome)
  end

  private

  attr_reader :id_nacional, :info

  def endpoint
    URI("https://pokeapi.co/api/v2/pokemon/#{id_nacional}/")
  end

  def cria_info
    resposta = Net::HTTP.get(endpoint)
    @info = JSON.parse(resposta)
  end

  def nome
    info['name']
  end
end