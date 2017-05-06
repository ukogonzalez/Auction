class UsersController < ApplicationController

    def index
      @users = User.all
      @user = User.new
    end

    def show
      @user = User.find_by(id: params[:id])
      @products = @user.products
    end

    def new
      @user = User.new
    end

    def create
      @user = User.create(name: params[:user][:name], email: params[:user][:email])
      redirect_to '/'
    end

    def destroy
      @user = User.find(params[:id]).destroy
      redirect_to action: 'index'
    end

end
