class Malformacion < ActiveRecord::Base
  attr_accessible :anillo_hipo,
    :centro_hipert,
    :circunvolucion,
    :hallazgo_mv,
    :hemisferio,
    :lobulo,
    :report,
    :senal_peri,
    :vaso,
    :report_id,
    :lobulo2,
    :lobulo3,
    :lobulo4,
    :hemisferio2,
    :hemisferio3,
    :hemisferio4
end
