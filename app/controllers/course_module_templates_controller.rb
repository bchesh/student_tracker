class CourseModuleTemplatesController < ApplicationController
  before_action :set_course_module_template, only: %i[ show edit update destroy ]

  # GET /course_module_templates or /course_module_templates.json
  def index
    @course_module_templates = CourseModuleTemplate.all
  end

  # GET /course_module_templates/1 or /course_module_templates/1.json
  def show
  end

  # GET /course_module_templates/new
  def new
    @course_module_template = CourseModuleTemplate.new
  end

  # GET /course_module_templates/1/edit
  def edit
  end

  # POST /course_module_templates or /course_module_templates.json
  def create
    @course_module_template = CourseModuleTemplate.new(course_module_template_params)

    respond_to do |format|
      if @course_module_template.save
        format.html { redirect_to @course_module_template, notice: "Course module template was successfully created." }
        format.json { render :show, status: :created, location: @course_module_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_module_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_module_templates/1 or /course_module_templates/1.json
  def update
    respond_to do |format|
      if @course_module_template.update(course_module_template_params)
        format.html { redirect_to @course_module_template, notice: "Course module template was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @course_module_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_module_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_module_templates/1 or /course_module_templates/1.json
  def destroy
    @course_module_template.destroy!

    respond_to do |format|
      format.html { redirect_to course_module_templates_path, notice: "Course module template was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_module_template
      @course_module_template = CourseModuleTemplate.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def course_module_template_params
      params.expect(course_module_template: [ :course_id, :module_name ])
    end
end
