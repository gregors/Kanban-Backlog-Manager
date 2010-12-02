class Story < ActiveRecord::Base
  belongs_to :business_value
  belongs_to :storypoint_value
  belongs_to :story_type
  belongs_to :story_status
  belongs_to :component
  
  validates :title,  :presence => true, :length => { :maximum => 255 }
  validates :description,  :length => { :maximum => 500 }
  
end
