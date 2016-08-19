json.array!(@lots) do |lot|
  json.extract! lot, :id, :title, :description, :num, :latitude, :longitude, :markerText,:image
  json.url lot_url(lot, format: :json)
end