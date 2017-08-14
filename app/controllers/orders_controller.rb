class OrdersController < ApplicationController

  before_action :require_admin, only: [:destroy,:index]
  before_action :require_user, only: [:new,:create]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
  @order = Order.new(order_params)
  if @order.save
    redirect_to '/'
  else
    render 'new'

  end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to '/orders/index'
  end
  private
  def order_params
    params.require(:order).permit(:user,:pitanje)
  end
end
