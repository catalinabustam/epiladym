class Patient < ActiveRecord::Base
  attr_accessible :age,
    :code,
    :name,
    :patid,
    :sex,
    :infoclinica15,
    :infoclinica3,
    :cod3t
  has_many :reports
  has_many :reads
end
