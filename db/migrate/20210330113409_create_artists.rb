class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :avatar
      t.text :description
      t.date :year_founded

      t.boolean :disbanded, default: false
      t.datetime :disbanded_at

      t.timestamps
    end
  end
end
