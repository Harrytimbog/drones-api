json.array! @drones do |drone|
  json.extract! drone, :id, :model, :brand
end
