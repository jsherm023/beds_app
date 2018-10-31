json.array! @beds do |bed|
  json.id bed.id
  json.name bed.name
  json.description bed.description
  json.price bed.price
  json.size bed.size
end
