class ApplicationController < ActionController::Base
	# before_action :authenticate_employee!, except: [:home, :status]
	protect_from_forgery with: :exceptions
	before_action :auth_employee, except: [:home, :status]

	def auth_employee
		unless employee_signed_in?
			redirect_to root_path
		end
	end

end
