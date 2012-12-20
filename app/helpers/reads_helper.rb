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

def duplicate_read(pat,eq)
  user1=[54,4,41,21,1,25,31,29,56,51,40,14,9,52,26,2,38,27,19,18,10,60,4,47,15,55,33,43,59,13]
  user2=[12,50,8,46,47,16,32,17,28,39,58,35,30,6,42,34,24,3,49,48,22,53,37,36,45,23,5,11,57,20]
end