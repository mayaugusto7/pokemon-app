class AddAtaqueToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :ataque, :string
  end
end
