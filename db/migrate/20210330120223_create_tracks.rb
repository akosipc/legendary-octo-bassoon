class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :name

      t.boolean :published, default: false
      t.datetime :published_at

      t.references :album

      t.timestamps
    end
  end
end
