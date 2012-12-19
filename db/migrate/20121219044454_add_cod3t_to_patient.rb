class AddCod3tToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :cod3t, :text
  end
end
