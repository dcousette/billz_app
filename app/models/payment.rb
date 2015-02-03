class Payment < ActiveRecord::Base
  EXPENSE_NAMES = ["Mortgage", "Electric", "Gas", "Water", "Daycare"] 
  validates :amount, :user, :expense_name, presence: true
  validates :expense_name, inclusion: EXPENSE_NAMES
  validates :amount, numericality: {greater_than_or_equal_to: 0.01}
  belongs_to :user
  
end
