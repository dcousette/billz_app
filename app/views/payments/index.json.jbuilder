json.array!(@payments) do |payment|
  json.extract! payment, :id, :expense_name, :amount, :user_id
  json.url payment_url(payment, format: :json)
end
