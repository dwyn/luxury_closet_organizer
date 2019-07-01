class HandbagsController < ApplicationController


  def new
    @handbag = Handbag.new
    render :new
  end

  def create
  end


  def index
    @handbag = Handbag.all
  end



  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_handbag
    @handbag = Handbag.find(params[:name], params[:brand], params[:url], params[:color], params[:designer_id], params[:style])
  end

  def handbag_params
    params.require(:handbag).permit(:name, :brand, :url, :color, :style, :designer_id)
  end







end
