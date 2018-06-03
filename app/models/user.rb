class User < ApplicationRecord
  validates :name, :email, :lastname, presence: true
  validates :name, :lastname, format: {with: /\A[a-zA-Z]+\z/, message: "Contais only A-z symbols"}
end
