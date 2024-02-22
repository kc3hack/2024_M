class CoursesController < ApplicationController
  def index
		@course = Course.order(updated_at: :desc).limit(1)
		@courses = Course.all
	end

  def new
    @course = Course.new
  end

	def result
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
    params.require(:course).permit(:start, :destination, :waypoints, :transportation, :transportation_origin)
  end
end
