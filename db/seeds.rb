puts "Clearing existing data..."
StudentModule.destroy_all
Enrollment.destroy_all
Student.destroy_all
CourseModule.destroy_all
Course.destroy_all

puts "Creating courses..."

course1 = Course.create!(
  name: "Functional Skills English Level 1",
  description: "Covers reading, writing, and communication techniques required at Level 1."
)

course2 = Course.create!(
  name: "Functional Skills Maths Level 2",
  description: "Develops problem-solving, numeracy, and real-world maths application."
)

course3 = Course.create!(
  name: "Employability Skills",
  description: "Focuses on CV writing, job preparation, and essential workplace behaviours."
)

puts "Creating course modules..."

# English modules
["Reading Assignment 1", "Writing Exam Task", "Speaking & Listening Assessment", "Final Portfolio Review"].each do |name|
  CourseModule.create!(course: course1, name: name)
end

# Maths modules
["Number & Place Value", "Fractions & Decimals", "Measures & Data Handling", "Final Assessment"].each do |name|
  CourseModule.create!(course: course2, name: name)
end

# Employability modules
["CV Writing", "Interview Preparation", "Applying for Jobs", "Workplace Behaviour Assessment"].each do |name|
  CourseModule.create!(course: course3, name: name)
end

puts "Creating students..."

student1 = Student.create!(name: "Sarah Thompson", email: "sarah@example.com", phone: "07482123456", status: "active")
student2 = Student.create!(name: "James Walker", email: "james@example.com", phone: "07933887766", status: "active")
student3 = Student.create!(name: "Emily Harris", email: "emily@example.com", phone: "07345443322", status: "paused")
student4 = Student.create!(name: "Michael Brown", email: "michael@example.com", phone: "07821444555", status: "completed")

puts "Enrolling students..."

Enrollment.create!(student: student1, course: course1, start_date: Date.today - 20, status: "Active")
Enrollment.create!(student: student2, course: course2, start_date: Date.today - 40, status: "Active")
Enrollment.create!(student: student3, course: course3, start_date: Date.today - 90, end_date: Date.today - 5, status: "Completed")

Enrollment.create!(student: student4, course: course1, start_date: Date.today - 200, end_date: Date.today - 120, status: "Completed")
Enrollment.create!(student: student4, course: course2, start_date: Date.today - 30, status: "Active")

puts "Seeding complete!"