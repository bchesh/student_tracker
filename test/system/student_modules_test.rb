require "application_system_test_case"

class StudentModulesTest < ApplicationSystemTestCase
  setup do
    @student_module = student_modules(:one)
  end

  test "visiting the index" do
    visit student_modules_url
    assert_selector "h1", text: "Student modules"
  end

  test "should create student module" do
    visit student_modules_url
    click_on "New student module"

    click_on "Create Student module"

    assert_text "Student module was successfully created"
    click_on "Back"
  end

  test "should update Student module" do
    visit student_module_url(@student_module)
    click_on "Edit this student module", match: :first

    click_on "Update Student module"

    assert_text "Student module was successfully updated"
    click_on "Back"
  end

  test "should destroy Student module" do
    visit student_module_url(@student_module)
    accept_confirm { click_on "Destroy this student module", match: :first }

    assert_text "Student module was successfully destroyed"
  end
end
