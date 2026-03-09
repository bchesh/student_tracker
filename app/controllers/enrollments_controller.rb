class EnrollmentsController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @student = Student.find(params[:student_id])
    @courses = Course.order(:name)
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)

    if @enrollment.save
      redirect_to @enrollment.student, notice: "Student enrolled successfully!"
    else
      @student = @enrollment.student
      @courses = Course.order(:name)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:student_id, :course_id, :start_date, :end_date, :status)
  end
end