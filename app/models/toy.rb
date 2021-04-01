class Toy < ApplicationRecord

  belongs_to :dog

  validates :melee, :ranged, {
    presence: true
  }
end
