class FoodsController < ApplicationController

  def new
    @food = Food.new
  end
  
 
  private
  def food_params
    params.require(:mask).permit(:name,:image,:price).merge(shop_id: current_shop.id)
  end

end