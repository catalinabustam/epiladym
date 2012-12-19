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
    :report_id
end
