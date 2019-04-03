class User < ApplicationRecord
  has_many :orders
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_length_of :password, minimum: 8 , maximum: 12
##falta agregar los numeros
end

