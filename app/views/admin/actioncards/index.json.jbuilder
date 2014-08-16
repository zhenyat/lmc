json.array!(@actioncards) do |actioncard|
  json.extract! actioncard, :competency_id, :level_id, :description
  json.url actioncard_url(actioncard, format: :json)
end