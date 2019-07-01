class FuelLogsController < ApplicationController
    def new
        @fuel_log= FuelLog.new(params[:id])
      end
    
      def create
        @fuel_log = FuelLog.new(user_params) 
        @fuel_log.user_id = current_user.id
        if @fuel_log.save
          flash[:success] = "Successfully added new fuel log!"
          redirect_to root_path
        else 
          flash[:danger] = "Failed to add fuel log"
        end  
      end
    
      def index
        @fuel_logs= FuelLog.where(user_id: current_user.id)
      end
    
      private
        def user_params
          params.permit(:fueltype,:gasprice,:price,:mileage,:user_id)
        end
end
