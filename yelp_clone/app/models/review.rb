class Review < ApplicationRecord
  belongs_to :restaurants
  validates :rating, inclusion: (1..5)
end
