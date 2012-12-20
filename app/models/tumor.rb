class Tumor < ActiveRecord::Base
  belongs_to :report
  attr_accessible :calsificaciones,
    :circunvolucion,
    :efecto_masa,
    :hallazgos,
    :hemisferio,
    :hiperintensidad,
    :lesion,
    :lobulo,
    :nodulo,
    :report_id
    
end
