class HandbagsController < ApplicationController
  def index
    @handbags = Handbag.all
  end






end
