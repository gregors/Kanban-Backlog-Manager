class BacklogController < ApplicationController

  def stories
    @stories = Story.where('story_status_id IS NULL')
  end
  
end
