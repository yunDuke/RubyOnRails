json.array!(@orders) do |order|
  json.extract! order, :id, :carplate, :time, :genre, :amount, :cost
  json.url order_url(order, format: :json)
end
