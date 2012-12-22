module ReadsHelper

  def study_button15(pat,eq)
    if pat.reports.where(user_id: current_user.id).map{|r| r.equipment}.include?(eq)
 content_tag(:button, pat.code, class: 'btn disabled')
    else
 link_to pat.code, new_patient_report_path(pat, equipment: eq, label:pat.code), class: 'btn btn-primary enabled'
    end
  end
  
  def study_button3(pat,eq)
    if pat.reports.where(user_id: current_user.id).map{|r| r.equipment}.include?(eq)
      content_tag(:button, "S#{pat.cod3t}", class: 'btn disabled')
    else
      link_to "S#{pat.cod3t}", new_patient_report_path(pat, equipment: eq,label:"S#{pat.cod3t}"), class: 'btn btn-primary enabled'
    end
  end
end

def duplicate_read(cod)
  user1=[54,4,41,21,1,25,31,29,56,51,40,14,9,52,26,2,38,27,19,18,10,60,4,47,15,55,33,43,59,13]
  user2=[12,50,8,46,47,16,32,17,28,39,58,35,30,6,42,34,24,3,49,48,22,53,37,36,45,23,5,11,57,20]
  
  if current_user.id==1
    codpat=user1[cod]
  else 
    codpat=user2[cod]
  end
  
  if codpat <31
    if codpat <10
        codpat="S0#{codpat}"
    else
        codpat="S#{codpat}"
    end
    patienti=Patient.find_by_code(codpat)
    eq="1.5T"
  else
    patienti=Patient.find_by_cod3t(codpat)
    eq="3T"
  end
  

  
  if patienti.reports.where(user_id: current_user.id).map{|r| r.label}.include?("S#{cod+61}")
    content_tag(:button, codpat, class: 'btn disabled')
    ena="false";
  else
    ena="true";
  end
  outdata=[patienti,eq,ena] 
   return outdata
end