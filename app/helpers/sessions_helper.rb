module SessionsHelper

    def log_in(user)
        session[:user_id] = user.id
    end

    # get current user
    def current_user
        if session[:user_id]
          @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    #get car user
    def current_car
        if session[:car_id]
          @current_car ||= Car.find_by(id: session[:car_id])
        end
    end

    #check if user has a car
    def car?
        !current_car.nil?
    end

    # Check if user is currently logged in
    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
