class WebpagesController < ApplicationController

  def index

  end

  def new
    @webpage = Webpage.new
  end

  def create
    @webpage = Webpage.new(params[:webpage])
    if @webpage.save
      flash[:notice] = "My awesome link has been created."
      redirect_to @webpage
    else
      #tbd
    end
  end

  def show
    @webpage = Webpage.find(params[:id])
  end

end
