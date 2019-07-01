class ShoesController < ApplicationController
  before_action :set_shoe, only:[:show, :edit, :update, :destroy]
  #this class method atutomatically calls the set_shoe method before the methods show, edit, update, and destroy.

  def new
    @shoe = Shoe.new
    render :new
  end

  def create
  end


  def index
    @shoes = Shoe.all
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

  # this method calls the Shoe.find method to retrieve the shoe with an params corresponding to the params passed to the controller.
  def set_shoe
    @shoe = Shoe.find(params[:name], params[:brand], params[:url], params[:color], params[:designer_id], params[:style])
  end

  def shoe_params
      params.require(:handbag).permit(:name, :brand, :url, :color, :style, :designer_id)
  end





end
