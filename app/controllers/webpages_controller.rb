class WebpagesController < ApplicationController

  def index

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

end
