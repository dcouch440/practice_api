class Dog < ApplicationRecord

  has_many :toys, dependent: :destroy

  validates :name, :breed, :size, {
    presence: true
  }
end
