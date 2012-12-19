module ReportsHelper

  def equip_button(pat,eq)
    if pat.reports.where(user_id: current_user.id).map{|r| r.equipment}.include?(eq)
      content_tag(:button, eq, class: 'btn disabled')
    else
      link_to eq, new_patient_report_path(pat, equipment: eq), class: 'btn btn-primary enabled'
    end
  end
  
  
  def code_select(rep)
    if rep.equipment="3T"
      cod=patient
    else
      link_to eq, new_patient_report_path(pat, equipment: eq), class: 'btn btn-primary enabled'
    end
  end

def show_report(report,eq,pat)
  eqr= report.equipment
  if eqr==eq
      reporte=report
      if eq=="1.5T"
      reporte.patient.code
      else
      "S#{reporte.patient.cod3t}"
      end
  else
  end
end

end