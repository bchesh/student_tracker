require "test_helper"

class StudentModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_module = student_modules(:one)
  end

  test "should get index" do
    get student_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_student_module_url
    assert_response :success
  end

  test "should create student_module" do
    assert_difference("StudentModule.count") do
      post student_modules_url, params: { student_module: {} }
    end

    assert_redirected_to student_module_url(StudentModule.last)
  end

  test "should show student_module" do
    get student_module_url(@student_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_module_url(@student_module)
    assert_response :success
  end

  test "should update student_module" do
    patch student_module_url(@student_module), params: { student_module: {} }
    assert_redirected_to student_module_url(@student_module)
  end

  test "should destroy student_module" do
    assert_difference("StudentModule.count", -1) do
      delete student_module_url(@student_module)
    end

    assert_redirected_to student_modules_url
  end
end
