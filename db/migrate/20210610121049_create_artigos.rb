class CreateArtigos < ActiveRecord::Migration[6.1]
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
