class Track < ApplicationRecord
  validates :name, presence: true

  has_one_attached :file

  belongs_to :album
end
