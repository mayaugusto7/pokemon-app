class ChangeForeignKeyForArtigos < ActiveRecord::Migration[6.1]
  def change
    rename_column :artigos, :usuario_id, :autor_id
  end
end
