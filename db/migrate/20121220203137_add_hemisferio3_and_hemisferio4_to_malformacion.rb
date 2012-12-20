class AddHemisferio3AndHemisferio4ToMalformacion < ActiveRecord::Migration
  def change
    add_column :malformacions, :hemisferio3, :string
    add_column :malformacions, :hemisferio4, :string
  end
end
