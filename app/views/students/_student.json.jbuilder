json.extract! student, :id, :name, :course, :start_date, :end_date, :notes, :created_at, :updated_at
json.url student_url(student, format: :json)
