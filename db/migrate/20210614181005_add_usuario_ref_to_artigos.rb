class AddUsuarioRefToArtigos < ActiveRecord::Migration[6.1]
  def change
    add_reference :artigos, :usuario, null: false, foreign_key: true
  end
end
