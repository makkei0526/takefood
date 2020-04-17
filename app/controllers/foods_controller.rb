class FoodsController < ApplicationController

  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new(food_params)
    if @food.save
      render :create
    else
      redirect_to new_shop_food_path(@food.shop.id), notice: '全ての項目を入力してください。'
    end
  end
 
  private
  def food_params
    params.require(:food).permit(:name,:image,:price).merge(shop_id: current_shop.id)
  end

end