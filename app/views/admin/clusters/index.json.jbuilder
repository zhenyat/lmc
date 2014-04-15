json.array!(@clusters) do |cluster|
  json.extract! cluster, :name, :title
  json.url cluster_url(cluster, format: :json)
end