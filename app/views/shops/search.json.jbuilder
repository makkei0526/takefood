json.array! @shops do |shop|
  json.id shop.id
  json.shopname shop.name
  json.station shop.area
  # json.station_walk shop.station_walk
  json.masks shop.foods
end