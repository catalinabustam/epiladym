module ReportsHelper

  def equip_button(pat,eq)
    if pat.reports.where(user_id: current_user.id).map{|r| r.equipment}.include?(eq)
      content_tag(:button, eq, class: 'btn disabled')
    else
      link_to eq, new_patient_report_path(pat, equipment: eq), class: 'btn btn-primary enabled'
    end
  end

end
