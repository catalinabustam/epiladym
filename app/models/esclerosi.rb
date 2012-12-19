class Esclerosi < ActiveRecord::Base
  attr_accessible :atrofia_sunj,
    :esclerosis,
    :estructura_anormal,
    :hallazgos_extra,
    :hiperintensidad,
    :volumenhipoder,
    :volumenhipoiz,
    :report_id
end
