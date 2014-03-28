class PerformanceController < ApplicationController
	def hide_performance
		@user = User.find_by_id params[:id]
		@user.performance = false
		@user.save
end
