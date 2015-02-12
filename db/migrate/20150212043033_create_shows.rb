class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.text :official_title
      t.string :offical_url
      t.string :img_url
      t.string :sponser
      t.string :sponser_url
      t.string :broadcasting_station
      t.string :broadcasting_period
      t.string :youtube_id

      t.timestamps
    end
  end
end
