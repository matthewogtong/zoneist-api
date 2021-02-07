class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
       user = User.find(params[:id])
       render json: user
    end

    def tags
        user = User.find(params[:id])
        render json: user.tags
    end

    def home
        user = AuthorizeRequest.new(request.headers).user

        if user
            render json: user
        else
            render json: { error: "Unauthorized request" }, status: :unauthorized
        end
    end

    private

    def user_params 
        params.permit(:username, :password)
    end
end
