class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def create
  end

  def new
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def edit
  end
end
