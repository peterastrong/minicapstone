class Beer < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :beer_categories
  has_many :categories, through: :beer_categories

  validates :style, :name, :package_size, :bottle_size, :rating_1to99, :price, presence: true
  validates :name, uniqueness: true
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}
  validates :description, presence: true, length: { maximum: 500 } 
  
  def sale_message
    if price < 2
      return "Sale item!!!!!"
    else 
      return "Everyday Value!!"
    end 
  end 

  def tax
    price * 0.09
  end 

  def total
    price + tax
  end

  def update_time
    updated_at.strftime("%A, %b %d")
  end

  def red_price
    "red-price" if sale_message == "Sale item!!!!!"
  end

  def first_image
    if images.first.nil?
      "https://www.beermenus.com/assets/favicons/favicon-af1a8d564621e02dc8e29aa32fc5f45edbeb492f8b1b9cc707f0dd88cad2cd64.ico"
    else
      images.first.url
    end
  end

end
