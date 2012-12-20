class AddLobulo2AndLobulo3AndLobulo4AndHemisferio2ToMalformacion < ActiveRecord::Migration
  def change
    add_column :malformacions, :lobulo2, :string
    add_column :malformacions, :lobulo3, :string
    add_column :malformacions, :lobulo4, :string
    add_column :malformacions, :hemisferio2, :string
  end
end
