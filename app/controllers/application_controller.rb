class ApplicationController < ActionController::Base
	before_action :authenticate_employee!, except: [:home, :status]
	protect_from_forgery with: :exception
end
