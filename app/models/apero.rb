class Apero < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :category
  attr_accessible :category_id, :content, :date, :hour, :name, :user_id, :visibility
  
end
