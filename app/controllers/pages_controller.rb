class PagesController < ApplicationController
  def home
    @posts = Post.order(updated_at: :desc).limit(15).includes(:shop)
  end
end
