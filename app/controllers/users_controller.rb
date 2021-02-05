class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def tags
        @user = User.find(params[:id])
        render json: @user.tags
    end

    def trinkets
        @user = User.find(params[:id])
        render json: @user.trinkets
    end

    def zones
        @user = User.find(params[:id])
        render json: @user.zones
    end
end
