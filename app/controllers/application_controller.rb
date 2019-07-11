class ApplicationController < ActionController::Base
    include SessionsHelper,CarsHelper, FuelLogsHelper, ForumPostsHelper
end
