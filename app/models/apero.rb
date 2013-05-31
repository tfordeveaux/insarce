class Apero < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :category
  attr_accessible :category_id, :content, :date, :hour, :name, :user_id, :visibility
  
  validate :visibility, :presence => true
  validate :check_date
 

  def check_date
  	if date < Date.today
  		errors.add(:date, "can't be in the past")
  	end
  end

end
