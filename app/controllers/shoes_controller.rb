class ShoesController < ApplicationController
  #before_action :set_shoe, only:[:show, :edit, :update, :destroy]
  #this class method atutomatically calls the set_shoe method before the methods show, edit, update, and destroy.

  def index
   @shoes = Shoe.all
  end

  def show
  @shoe = Shoe.find(params[:id])
  end


  def new
    @shoe = Shoe.new
  end


  def create
    byebug
    @shoe = current_user.shoes.build(shoe_params)
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else
      render :new

  end
end

private




  #def destroy
    #set_shoe
    #@shoe.destroy
    #redirect_to shoes_path
  #end




  # this method calls the Shoe.find method to retrieve the shoe with an params corresponding to the params passed to the controller.
  #def set_shoe
     #@shoe = Shoe.find_by(id: params[:id])
     #@shoe = Shoe.find(params[:user_id], params[:name], params[:brand], params[:url], params[:color], params[:designer_id], params[:style])
    #if !@shoe
      #redirect_to shoes_path
  #end
#end

  #strong params
  def shoe_params
      params.require(:shoe).permit(:name, :brand, :url, :color, :style, designer_attributes:[:name])
  end

end
