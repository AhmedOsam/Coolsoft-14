class ProblemsController < ApplicationController
  def Create_Edit_Problem_Page
  	p = Problem.new(permitCreate)
  	if p.save
  		flash[:notice] ="Problem is added"
  		redirect_to :back
	else 
		flash[:notice] ="Problem are missing paramaters"	
		redirect_to :back
	end
  end

  def showCreate
  	@problems = Problem.all
  end

  def permitCreate
  	params.require(:Problem).permit(:title , :description) 
  end

  def allProblems
  	@problems = Problem.all
  end	

  def problemView
  	@problem = Problem.find_by_id(params[:id])
  end
end