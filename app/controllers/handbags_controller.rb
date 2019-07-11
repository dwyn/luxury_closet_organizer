class HandbagsController < ApplicationController
  #before_action :set_handbag, only:[  :show, :edit, :update, :destroy]

  def new
    @handbag = Handbag.new
    #render :new
  end


  def create
    #@handbag = current_user.handbags.build(handbag_params)
    @handbag = Handbag.create(handbag_params)
    #byebug
    if @handbag.save
      redirect_to handbag_path(@handbag)
    else
      render :new
  end
end


  def index
    @handbag = Handbag.all
    #@handbag = Handbag.search(params[:search])
    end


  def show
    @handbag = Handbag.find_by(id: params[:id])
  end

  def edit
  end

  #def update
   #if @handbag.update(handbag_params)
     #redirect_to handbags_path(@handbag)
   #else
     #render :edit
   #end
  #end

  #def destroy

    #@handbag.destroy
    #redirect_to handbags_path
  #end

  private


  def set_handbag
     @handbag = Handbag.find_by(id: params[:id])
    if !@handbag
      redirect_to handbags_path
  end
end



  def handbag_params
    params.require(:handbag).permit(:name, :brand, :color, :style, :designer_id, designer_attributes: [:name])
  end

end
