json.array!(@tazer_devices) do |tazer_device|
  json.extract! tazer_device, :id, :serial_number, :model, :date_received, :location
  json.url tazer_device_url(tazer_device, format: :json)
end
