class BeerCategory < ApplicationRecord
  belongs_to :beer
  belongs_to :category
end
