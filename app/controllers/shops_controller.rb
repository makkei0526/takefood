class ShopsController < ApplicationController


  def index
    @shops = Shop.page(params[:page]).per(5)
  end

  def show
    @shop = Shop.find(params[:id])
    @foods = @shop.foods.includes(:shop)
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to shop_path(@shop.id), notice: 'お店情報を更新しました'
  end

  def search
    shopall = Shop.search(params[:keyword])
    @shops = []
    shopall.each do |shop|
      if shop.foods.length >= 1
        @shops << shop
      end
    end
     
  end

  private
  def shop_params
    params.require(:shop).permit(:name,:image,:address,:introduction,:area,:shop_holiday,:shop_time)
  end

end