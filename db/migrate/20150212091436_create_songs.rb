class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :music
      t.string :music_url
      t.string :lyrics
      t.string :singer
      t.string :illustration
      t.string :pv_director
      t.string :youtube_id
      t.string :itunes_url

      t.timestamps
    end
  end
end
