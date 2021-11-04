class UsersController < ApplicationController


    def show
        user = User.find(params[:id])
        if user.valid?
            render json: user, include: :items
        else 
            render json: {errors: user.errors}, status: :not_found
        end
    end
end
