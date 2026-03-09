module StudentsHelper
  def status_badge(status)
    status = (status || "").downcase
    color = case status
            when "active"     then "bg-green-100 text-green-800 ring-green-600/20"
            when "paused"     then "bg-yellow-100 text-yellow-800 ring-yellow-600/20"
            when "completed"  then "bg-blue-100 text-blue-800 ring-blue-600/20"
            when "inactive"   then "bg-gray-100 text-gray-800 ring-gray-600/20"
            else                   "bg-slate-100 text-slate-800 ring-slate-600/20"
            end

    content_tag(:span, status.capitalize.presence || "Unknown",
      class: "inline-flex items-center rounded-md px-2 py-1 text-xs font-medium ring-1 ring-inset #{color}")
  end
end