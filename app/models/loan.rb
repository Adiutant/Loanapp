class Loan < ApplicationRecord
 # validates :sum, :term, :interest, numericality: {greater_than: 0}
  validates :interest, numericality: {greater_than_or_equal: 0}
  #belongs_to :user
end
