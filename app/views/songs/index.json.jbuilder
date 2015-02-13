json.array!(@songs) do |song|
  json.extract! song, :id, :title, :music, :music_url, :lyrics, :singer, :illustration, :pv_director, :youtube_id, :itunes_url
  json.url song_url(song, format: :json)
end
