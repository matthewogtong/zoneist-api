class TrinketsController < ApplicationController
    def index
        trinkets = Trinket.all
        render json: trinkets
    end
end
