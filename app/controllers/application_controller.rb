class ApplicationController < ActionController::API
  # app/controllers/application_controller.rb
    before_action :authenticate_admin!, except: [:index, :show]
end
