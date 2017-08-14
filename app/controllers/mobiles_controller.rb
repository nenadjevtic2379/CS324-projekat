class MobilesController < ApplicationController

  before_action :require_admin, only: [:edit,:new,:update,:create,:destroy]

  def index
    @mobiles = Mobile.all
  end

 def show
   @mobile = Mobile.find(params[:id])
 end

  def edit
    @mobile = Mobile.find(params[:id])
  end

  def new
    @mobile = Mobile.new
  end

  def update
    @mobile = Mobile.find(params[:id])
    if @mobile.update(mobile_params)
      redirect_to @mobile
    else
      render 'edit'
    end

  end


  def create
    @mobile = Mobile.new(mobile_params)
    if @mobile.save
      redirect_to @mobile, :notice => "Uspesno dodato"
    else
      render 'new'

    end
  end


  def destroy
    @mobile = Mobile.find(params[:id])
    @mobile.destroy
    redirect_to '/'
  end

  private
  def mobile_params
    params.require(:mobile).permit(:ime, :slika, :opis, :specifikacije)
  end
end
