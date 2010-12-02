class Component < ActiveRecord::Base
  has_many :stories
  
  validates :title,  :presence => true
  
end
