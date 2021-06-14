class Artigo < ApplicationRecord
  belongs_to :autor, class_name: 'Usuario', foreign_key: :autor_id
end
