json.array!(@potholes) do |pothole|
  json.extract! pothole, 
  json.url pothole_url(pothole, format: :json)
end
