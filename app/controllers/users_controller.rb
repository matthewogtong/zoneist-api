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

    def add_tag
        user = User.find(params[:id])
        tag = Tag.create!(user_id: user.id, name: params[:name])
        render json: tag
    end

    def delete_tag
        tag = Tag.find(params[:tag_id])
        tag.destroy
        render json: tag
    end

    def zones
        user = User.find(params[:id])
        render json: user.zones
    end

    def add_zone
        user = User.find(params[:id])
        tag = Tag.find_by(name: params[:tag_id])
        region = Region.find_by(name: params[:region_id])
        trinket = Trinket.find_by(name: params[:trinket_id])
        zone = Zone.create!(is_active: params[:isActive], is_complete: params[:isComplete], objective: params[:objective], zone_start: params[:zoneStart], total_objective_time: params[:totalObjectiveTime], tag_id: tag.id, region_id: region.id, trinket_id: trinket.id, user_id: user.id)
        render json: zone
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

    def trinkets
        user = User.find(params[:id])
        render json: user.trinkets
    end

    def purchase_trinket
        user = User.find(params[:id])
        trinket = Trinket.find(params[:user][:id])
        user.tokens = user.tokens - trinket.price
        user.update(tokens: user.tokens)
        Usertrinket.create!(user_id: user.id, trinket_id: params[:user][:id], is_bought: true)
        render json: trinket
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
