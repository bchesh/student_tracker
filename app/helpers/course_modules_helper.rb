module CourseModulesHelper
  def module_status_badge(status)
    status = (status || "").upcase
    color = case status
            when "PASSED"                    then "bg-green-100 text-green-800 ring-green-600/20"
            when "SUBMITTED & NOT MARKED"    then "bg-yellow-100 text-yellow-800 ring-yellow-600/20"
            when "CORRECTIONS SENT"          then "bg-blue-100 text-blue-800 ring-blue-600/20"
            when "NO WORK / NOT COMPLETED"   then "bg-gray-100 text-gray-800 ring-gray-600/20"
            when "AI DETECTED (SENT TO REDO)"then "bg-red-100 text-red-800 ring-red-600/20"
            else "bg-slate-100 text-slate-800 ring-slate-600/20"
            end

    content_tag(:span, status,
      class: "inline-flex items-center rounded-md px-2 py-1 text-xs font-medium ring-1 ring-inset #{color}")
  end
end