json.extract! course_module, :id, :student_id, :module_name, :status, :notes, :created_at, :updated_at
json.url course_module_url(course_module, format: :json)
