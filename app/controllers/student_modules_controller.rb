class StudentModulesController < ApplicationController
  before_action :set_student_module, only: %i[ show edit update destroy ]

  # GET /student_modules or /student_modules.json
  def index
    @student_modules = StudentModule.all
  end

  # GET /student_modules/1 or /student_modules/1.json
  def show
  end

  # GET /student_modules/new
  def new
    @student_module = StudentModule.new
    @student_module.student_id = params[:student_id] if params[:student_id]
  end

  # GET /student_modules/1/edit
  def edit
  end

  # POST /student_modules or /student_modules.json
  def create
    @student_module = StudentModule.new(student_module_params)

    respond_to do |format|
      if @student_module.save
        format.html { redirect_to @student_module, notice: "Student module was successfully created." }
        format.json { render :show, status: :created, location: @student_module }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_modules/1 or /student_modules/1.json
  def update
    respond_to do |format|
      if @student_module.update(student_module_params)
        format.html { redirect_to @student_module, notice: "Student module was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @student_module }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_modules/1 or /student_modules/1.json
  def destroy
    @student_module.destroy!

    respond_to do |format|
      format.html { redirect_to student_modules_path, notice: "Student module was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_module
      @student_module = StudentModule.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def student_module_params
      params.fetch(:student_module, {})
    end
end
