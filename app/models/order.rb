class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :beers, through: :carted_products

  def calculate_subtotal(input_carted_products)
    subtotal_amount = 0 
    input_carted_products.each do |carted|
      subtotal_amount += carted.quantity * carted.beer.price
    end 
    self.subtotal = subtotal_amount
  end

  def calculate_tax
    self.tax = self.subtotal * 0.09
  end 

  def calculate_total
    self.total = self.subtotal + self.tax   
  end

  def calculate_absolute_total(input_carted_products)
    self.calculate_subtotal(input_carted_products)
    self.calculate_tax
    self.calculate_total
  end

end
