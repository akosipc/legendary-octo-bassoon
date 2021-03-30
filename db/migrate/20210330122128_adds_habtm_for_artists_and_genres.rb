class AddsHabtmForArtistsAndGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :artists_genres, id: false do |t|
      t.bigint :artist_id
      t.bigint :genre_id
    end

    add_index :artists_genres, [:artist_id, :genre_id], unique: true
  end
end
