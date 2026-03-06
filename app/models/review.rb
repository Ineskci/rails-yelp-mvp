class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence:true
  validates :rating, presence:true

  # Rating entier entre 0 et 5
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 5
  }
end
