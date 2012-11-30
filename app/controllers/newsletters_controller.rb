class NewslettersController < ApplicationController

  filter_resource_access

  layout 'cms'

  def index
    @newsletters = Newsletter.page(params[:search], params[:page]) 
  end
  
  def show
    @newsletter = Newsletter.find(params[:id])
  end
  
  def new
    @newsletter = Newsletter.new
  end
  
  def create
    @newsletter = Newsletter.new(params[:newsletter])
    if @newsletter.save
      flash[:notice] = "Successfully created newsletter."
      redirect_to @newsletter
    else
      render :action => 'new'
    end
  end
  
  def edit
    @newsletter = Newsletter.find(params[:id])
  end
  
  def update
    @newsletter = Newsletter.find(params[:id])
    if @newsletter.update_attributes(params[:newsletter])
      flash[:notice] = "Successfully updated newsletter."
      redirect_to @newsletter
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy
    flash[:notice] = "Successfully destroyed newsletter."
    redirect_to newsletters_url
  end

end
