class WebpagesController < ApplicationController

  def index
    @webpages = Webpage.order("id").reverse
  end

  def new
    @webpage = Webpage.new
  end

  def create
    @webpage = Webpage.new(params[:webpage])
    if @webpage.save
      flash[:notice] = "Your awesome link has been created."
      redirect_to @webpage
    else
      flash[:alert] = "Your awesome link hasn't been created."
      render :action => "new"
    end
  end

  def show
    @webpage = Webpage.find(params[:id])
  end

  def edit
    @webpage = Webpage.find(params[:id])
  end

  def update
    @webpage = Webpage.find(params[:id])
    if @webpage.update_attributes(params[:webpage])
      flash[:notice] = "Your awesome link has been updated."
      redirect_to @webpage
    else
      flash[:alert] = "Your awesome link has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @webpage = Webpage.find(params[:id])
    @webpage.destroy
    flash[:notice] = "Your awesome link has been deleted."
    redirect_to webpages_path
  end

end
















