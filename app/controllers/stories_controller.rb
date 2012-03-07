class StoriesController < ApplicationController
  
  def index
    @stories = Story.find(:all)
    if params[:component_id] && !params[:component_id].empty?
      @stories = Story.where(["component_id=?",params[:component_id]])
    end
    
    if request.xhr? #checks if call was done via ajax
      puts "XHR"
      render :partial =>"story_table"
    end
  end
  
  
  def show
    @story = Story.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @story }
      format.pdf do
        pdf = StoryPdf.new(@story)
        send_data pdf.render, filename: "story_#{@story.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
  
  
  def new
    @story = Story.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @story }
    end
  end
  
  
  def create
    @story = Story.new(params[:story])

    respond_to do |format|
      if @story.save
        format.html { redirect_to(stories_path,
                      :notice => 'Story was successfully created.') }
        format.xml  { render :xml => @story,
                      :status => :created, :location => @story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @story.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  
  
  def edit
    @story = Story.find(params[:id])
  end
  
  
  def update
    @story = Story.find(params[:id])

    respond_to do |format|
      if @story.update_attributes(params[:story])
        format.html { redirect_to(@story,
                      :notice => 'Story was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @story.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  
end
