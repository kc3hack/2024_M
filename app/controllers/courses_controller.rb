class CoursesController < ApplicationController
  def index
		@courses = Course.order(updated_at: :desc).limit(1)
	end

  def new
    @course = Course.new
  end

	def result
		# @courses = Course.order(updated_at: :desc).limit(1)
	end

	def create
    course = Course.new(course_params)
    if course.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  private
  def course_params
    params.require(:course).permit(:start, :destination)
  end
end