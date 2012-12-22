class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_one :conclusion, :dependent => :destroy
  has_one :displasium, :dependent => :destroy
  has_one :esclerosi, :dependent => :destroy
  has_one :malformacion, :dependent => :destroy
  has_one :tumor, :dependent => :destroy
  attr_accessible   :accession,
    :date,
    :equipment,
    :user_id,
    :patient_id,
    :conclusion_attributes,
    :displasium_attributes,
    :esclerosi_attributes,
    :malformacion_attributes,
    :tumor_attributes,
    :banddob,
    :label
  
  accepts_nested_attributes_for :conclusion, :displasium, :esclerosi, :malformacion, :tumor
  # validates :equipment, :uniqueness => { :scope => :user_id, :message => "Usted ya ha reportado el estudio para el paciente en este equipo" }
end
