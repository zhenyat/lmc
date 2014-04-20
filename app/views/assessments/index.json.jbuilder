json.array!(@assessments) do |assessment|
  json.extract! assessment, :id, :user_id, :behavior_id, :user_tick, :master_tick
  json.url assessment_url(assessment, format: :json)
end
