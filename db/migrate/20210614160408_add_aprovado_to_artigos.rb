class AddAprovadoToArtigos < ActiveRecord::Migration[6.1]
  def change
    add_column :artigos, :aprovado, :boolean, default: false
  end
end
