class RemoveBandbobFromReport < ActiveRecord::Migration
  def up
    remove_column :reports, :banddob
  end

  def down
    add_column :reports, :banddob, :string
  end
end
