class DesignersController < ApplicationController

  def index
    @designers = Vet.all
  end

  def show
    @designer = Designer.find_by(id: params[:id])
  end
end
