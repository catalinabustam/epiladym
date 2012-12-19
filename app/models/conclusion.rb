class Conclusion < ActiveRecord::Base
  belongs_to :report
  attr_accessible :correlacion,
    :observaciones,
    :rm,
    :sospecha,
    :report_id
end
