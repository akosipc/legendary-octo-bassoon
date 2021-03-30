class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.string :classification

      t.datetime :released_at

      t.references :artist

      t.timestamps
    end
  end
end
