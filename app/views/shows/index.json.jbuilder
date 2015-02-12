json.array!(@shows) do |show|
  json.extract! show, :id, :title, :official_title, :offical_url, :img_url, :sponser, :sponser_url, :broadcasting_station, :broadcasting_period, :youtube_id
  json.url show_url(show, format: :json)
end
