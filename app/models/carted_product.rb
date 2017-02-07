class CartedProduct < ApplicationRecord
  belongs_to :order, optional:true
  belongs_to :beer
  belongs_to :user
end
