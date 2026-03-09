class StudentModulesController < ApplicationController
  before_action :set_student_module, only: %i[show edit update destroy]

  def create
    @student_module = StudentModule.new(student_module_params)

    if @student_module.save
      respond_to do |format|
        format.html { redirect_to @student_module.student, notice: "Module created for student." }
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.html { redirect_back fallback_location: @student_module.student || students_path,
                      alert: @student_module.errors.full_messages.to_sentence }
        format.turbo_stream
      end
    end
  end

  # PATCH/PUT /student_modules/1
  def update
    respond_to do |format|
      if @student_module.update(student_module_params)
        format.turbo_stream   # will re-render the frame if you add a turbo_stream template (optional)
        format.html { redirect_back fallback_location: @student_module.student, notice: "Module updated." }
        format.json { render :show, status: :ok, location: @student_module }
      else
        format.turbo_stream
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_module.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def student_module_params
    params.require(:student_module).permit(:student_id, :module_name, :status, :notes)
  end

  def set_student_module
    @student_module = StudentModule.find(params[:id])
  end
end