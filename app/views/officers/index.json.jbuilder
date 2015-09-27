json.array!(@officers) do |officer|
  json.extract! officer, :id, :last_name, :first_name, :middle_initial, :badge_number, :location_in_department, :date_initial_certification, :date_recertification
  json.url officer_url(officer, format: :json)
end
