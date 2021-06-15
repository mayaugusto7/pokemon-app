class Usuario < ApplicationRecord
  has_many :artigos
  validates :email, uniqueness: true
end
