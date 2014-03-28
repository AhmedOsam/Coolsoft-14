class CoursesController < ApplicationController

  
  def destroy
  	Course.find(params[:id]).destroy
    flash[:success] = "Course deleted."
    redirect_to :action => 'show'
  end

  def create
  end

  def manage
       id =  params[:id]
    course = Course.find_by_id(id)
     @discussionBoard = course.discussion_board
  end

end

	def show

			@courses = Lecturer.find_by_name('Lecturer2').courses
		end
	end


