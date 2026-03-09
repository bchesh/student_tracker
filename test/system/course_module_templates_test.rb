require "application_system_test_case"

class CourseModuleTemplatesTest < ApplicationSystemTestCase
  setup do
    @course_module_template = course_module_templates(:one)
  end

  test "visiting the index" do
    visit course_module_templates_url
    assert_selector "h1", text: "Course module templates"
  end

  test "should create course module template" do
    visit course_module_templates_url
    click_on "New course module template"

    fill_in "Course", with: @course_module_template.course_id
    fill_in "Module name", with: @course_module_template.module_name
    click_on "Create Course module template"

    assert_text "Course module template was successfully created"
    click_on "Back"
  end

  test "should update Course module template" do
    visit course_module_template_url(@course_module_template)
    click_on "Edit this course module template", match: :first

    fill_in "Course", with: @course_module_template.course_id
    fill_in "Module name", with: @course_module_template.module_name
    click_on "Update Course module template"

    assert_text "Course module template was successfully updated"
    click_on "Back"
  end

  test "should destroy Course module template" do
    visit course_module_template_url(@course_module_template)
    accept_confirm { click_on "Destroy this course module template", match: :first }

    assert_text "Course module template was successfully destroyed"
  end
end
