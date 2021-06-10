class Usuario < ApplicationRecord
  validates :email, uniqueness: true
end
