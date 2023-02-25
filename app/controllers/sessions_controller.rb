class SessionsController < ApplicationController

    #user logging in
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    #clear username out of session to log out

    def destroy
        session.delete :user_id
        head :no_content
    end

end
