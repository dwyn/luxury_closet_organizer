class ShoesController < ApplicationController
  #before_action :set_shoe, only:[:show, :edit, :update, :destroy]
  #this class method atutomatically calls the set_shoe method before the methods show, edit, update, and destroy.

  def new
    @shoe = Shoe.new
    #render :new
  end


  def create
    #@shoe = current_user.shoes.build(shoe_params)
    @shoe = Shoe.create(shoe_params)
    @shoe.user_id = session[:user_id]
    #byebug
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else
      render :new

        #redirect_to shoes_path
  end
end

  def index
    @shoes = Shoe.all
    #@shoes = Shoe.search(params[:search])
  end

  def show
    #set_shoe
    @shoe = Shoe.find( params[:id])
  end

  #def edit
    #set_shoe
  #end

  #def update
    #set_shoe
   #if @shoe.update(shoe_params)
     #redirect_to shoe_path(@shoe)
   #else
     #render :edit
   #end
  #end

  #def destroy
    #set_shoe
    #@shoe.destroy
    #redirect_to shoes_path
  #end

  private

  # this method calls the Shoe.find method to retrieve the shoe with an params corresponding to the params passed to the controller.
  #def set_shoe
     #@shoe = Shoe.find_by(id: params[:id])
     #@shoe = Shoe.find(params[:user_id], params[:name], params[:brand], params[:url], params[:color], params[:designer_id], params[:style])
    #if !@shoe
      #redirect_to shoes_path
  #end
#end

  def shoe_params
      params.require(:shoe).permit(:name, :brand, :url, :color, :style, :designer_id)
  end

end
