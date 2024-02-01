class User < ApplicationRecord
  has_many :products
  enum role: %i[guest user admin]
end
