class Pricing < ActiveRecord::Base
  belongs_to :item
  
  #functions
  def daily
    self.daily_price
  end
  def monthly
    self.monthly_price
  end
  def yearly
    self.yearly_price
  end
end
