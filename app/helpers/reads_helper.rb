module ReadsHelper

  def study_button15(pat,eq)
    if pat.reports.where(user_id: current_user.id).map{|r| r.equipment}.include?(eq)
      content_tag(:button, pat.code, class: 'btn disabled')
    else
      link_to pat.code, new_patient_report_path(pat, equipment: eq), class: 'btn btn-primary enabled'
    end
  end
  
  def study_button3(pat,eq)
    if pat.reports.where(user_id: current_user.id).map{|r| r.equipment}.include?(eq)
      content_tag(:button, "S#{pat.cod3t}", class: 'btn disabled')
    else
      link_to pat.cod3t, new_patient_report_path(pat, equipment: eq), class: 'btn btn-primary enabled'
    end
  end
end
