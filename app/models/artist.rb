class Artist < ApplicationRecord
  validates :name, :description, :year_founded, presence: true
  validates :description, length: { minimum: 50 }

  has_many :albums
  has_many :tracks, through: :albums
  has_and_belongs_to_many :genres

  def disband
    update(disbanded: true, disbanded_at: DateTime.now) unless disbanded?
  end
end
