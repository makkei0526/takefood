json.array! @shops do |shop|
  json.id shop.id
  json.shopname shop.name
  json.area shop.area
  # json.station_walk shop.station_walk
  json.foods shop.foods
end