class Movie < ApplicationRecord
  has_many :casts, dependent: :destroy
  has_many :actors, through: :casts

  validates :name, presence: true
end
