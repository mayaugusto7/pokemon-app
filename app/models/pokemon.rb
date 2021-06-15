class Pokemon < ApplicationRecord

  validates :ataque, presence: true

  def nome_completo
    "#{nome}- #{id_nacional}" if nome && id_nacional
  end
end
