class PerformanceController < ApplicationController
	def hide_performance
		@user = Student.find_by_id (current_student.id)
		@user.performance = false
		@user.save
end
end
