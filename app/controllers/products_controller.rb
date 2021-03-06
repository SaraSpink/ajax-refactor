class ProductsController < ApplicationController
  before_action :authorize, except: [:index, :show, :new]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html {redirect_to product_path}
      format.js
    end
  end

  def create
    @product = Product.new(product_params)
    if current_user.admin === true
      @product.save
      flash[:alert]="product successfully created"
      redirect_to '/'
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
