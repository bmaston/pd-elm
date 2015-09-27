json.array!(@cartridges) do |cartridge|
  json.extract! cartridge, :id, :serial_num, :model, :date_received, :location
  json.url cartridge_url(cartridge, format: :json)
end
