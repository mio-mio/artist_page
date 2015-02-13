# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

Show.delete_all

Show.connection.execute("delete from sqlite_sequence where name='shows'") 


CSV.foreach('db/shows_data.csv') do |row|
  Show.create(:title => row[0], :official_title => row[1], :offical_url => row[2], :img_url => row[3], :sponser => row[4], :sponser_url => row[5], :broadcasting_station => row[6], :broadcasting_period => row[7], :youtube_id => row[8])
end

Song.delete_all

Song.connection.execute("delete from sqlite_sequence where name='songs'") 

CSV.foreach('db/songs_data.csv') do |row|
  Song.create(:title => row[0], :music => row[1], :music_url => row[2], :lyrics => row[3], :singer => row[4], :illustration => row[5], :pv_director => row[6], :youtube_id => row[7], :itunes_url => row[8])
end