class ApplicationController < ActionController::Base
	# before_action :authenticate_employee!, except: [:home, :status]
	before_filter :auth_employee, except: [:home, :status]
	protect_from_forgery with: :exception

	def auth_employee
		unless employee_signed_in?
			redirect_to root_path
		end
	end

end
