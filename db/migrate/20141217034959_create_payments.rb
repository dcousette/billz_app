class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :expense_name
      t.float :amount
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :payments, :users
  end
end
