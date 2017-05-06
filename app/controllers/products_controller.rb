class ProductsController < ApplicationController
  
    def index
      @products = Product.all
    end

    def show
      @product = Product.find_by(id: params[:id])
    end

    def new
      @product = Product.new
    end

    def create
      @user = User.find(params[:user_id])
      @product = @user.products.new(title: params[:product][:title], description: params[:product][:description], deadline: params[:product][:deadline])
    end

    def destroyProduct
      @product = Product.find(params[:id]).destroy
    end

end
