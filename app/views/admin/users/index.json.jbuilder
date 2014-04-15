json.array!(@users) do |user|
  json.extract! user, :position_id, :level_id, :first_name, :last_name
  json.url user_url(user, format: :json)
end