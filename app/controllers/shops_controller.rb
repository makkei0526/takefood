class ShopsController < ApplicationController


  def show
    @shop = Shop.find(params[:id])
  end

  private
  def shop_params
    params.require(:shop).permit(:name,:image,:address,:introduction,:area,:shop_holiday,:shop_time)
  end
end