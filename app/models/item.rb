class Item < ActiveRecord::Base



has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/




  belongs_to :user
  belongs_to :category
  #functions
  def prices
    "#{daily_price}/per day, #{weekly_price}/per week, #{monthly_price}/per month"
  end
  
end
