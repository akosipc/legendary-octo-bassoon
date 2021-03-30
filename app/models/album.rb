class Album < ApplicationRecord
  CLASSES = ['Single', 'EP', 'LP'].freeze

  validates :name, :description, presence: true
  validates :classification, inclusion: { in: CLASSES }

  belongs_to :artist

  has_many :tracks
end
