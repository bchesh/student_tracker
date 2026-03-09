module CoursesHelper
  def module_count_badge(course)
    count = course.course_modules.count

    content_tag(
      :span,
      "#{count} #{'module'.pluralize(count)}",
      class: "inline-flex items-center rounded-md bg-blue-100 text-blue-800 px-2 py-1 text-xs font-medium"
    )
  end
end