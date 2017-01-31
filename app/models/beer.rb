class Beer < ApplicationRecord
  belongs_to :supplier
  has_many :images
  
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

end
