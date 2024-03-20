class ProductsController < ApplicationController
  def index
    @products = Product.latest_in_stock
  end

  def create
  end

  def new
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    render :index, status: :see_other
  end
end
