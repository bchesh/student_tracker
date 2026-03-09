require "test_helper"

class CourseModuleTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_module_template = course_module_templates(:one)
  end

  test "should get index" do
    get course_module_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_course_module_template_url
    assert_response :success
  end

  test "should create course_module_template" do
    assert_difference("CourseModuleTemplate.count") do
      post course_module_templates_url, params: { course_module_template: { course_id: @course_module_template.course_id, module_name: @course_module_template.module_name } }
    end

    assert_redirected_to course_module_template_url(CourseModuleTemplate.last)
  end

  test "should show course_module_template" do
    get course_module_template_url(@course_module_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_module_template_url(@course_module_template)
    assert_response :success
  end

  test "should update course_module_template" do
    patch course_module_template_url(@course_module_template), params: { course_module_template: { course_id: @course_module_template.course_id, module_name: @course_module_template.module_name } }
    assert_redirected_to course_module_template_url(@course_module_template)
  end

  test "should destroy course_module_template" do
    assert_difference("CourseModuleTemplate.count", -1) do
      delete course_module_template_url(@course_module_template)
    end

    assert_redirected_to course_module_templates_url
  end
end
