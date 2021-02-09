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

    def regions
        user = User.find(params[:id])
        render json: user.regions
    end

    def purchase_region
        user = User.find(params[:id])
        region = Region.find(params[:user][:id])
        user.tokens = user.tokens - region.price
        user.update(tokens: user.tokens)
        Userregion.create!(user_id: user.id, region_id: params[:user][:id], is_bought: true)
        render json: region
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

    # def region_params
    #     params.permit(:id, :name, :price)
    # end
end
