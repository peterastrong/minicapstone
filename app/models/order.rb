class Order < ApplicationRecord
  belongs_to :user
  
  has_many :carted_products
  has_many :beers, through: :carted_products

  def calculate_subtotal
    puts "#{beer} is nil?"
    self.subtotal = quantity * beer.price
  end

  def calculate_tax
    self.tax = quantity * beer.price * 0.09
  end 

  def calculate_total
    self.total = subtotal + tax   
  end

  def calculate_absolute_total
    self.calculate_subtotal
    self.calculate_tax
    self.calculate_total
  end

end
