class User < ApplicationRecord
  has_many :orders
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password, length:{in: 8..12}
  validates :number, length:{in: 8..12}

end

