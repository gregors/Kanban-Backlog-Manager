class ComponentsController < ApplicationController
  
  def new
    @component = Component.create
  end
  
  
  def create
    @component = Component.new(params[:component])
    respond_to do |format|
      if @component.save
        format.html { redirect_to(@component,:notice => 'Component was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  
  def show
    @component = Component.find(params[:id])
  end
  
  
  def index
    @components = Component.all
  end
  
end
