class Image < ApplicationRecord
  belongs_to :beer

  validates :url, presence: true 
end
