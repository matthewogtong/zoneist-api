class TagsController < ApplicationController

    def index
        user = User.find(params[:id])
        tags = user.tags
        render json: tags
    end
end
