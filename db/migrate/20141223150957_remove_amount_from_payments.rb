class RemoveAmountFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :amount, :float
  end
end
