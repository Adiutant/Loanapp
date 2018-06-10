class User < ApplicationRecord
  validates :name, :email, :lastname, presence: true
  #validates :name, :lastname, format: {with: /\A[a-zA-Z]+\z/, message: "Contais only A-z symbols"}
  #лучше просто длину валидировать, так как в валидации выше ты запрещаешь использование русских букв 
  validates :name, :lastname, length: {minimum: 2, maximum: 50}
  has_many :loans
end
