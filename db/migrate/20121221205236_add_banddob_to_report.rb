class AddBanddobToReport < ActiveRecord::Migration
  def change
    add_column :reports, :banddob, :string, default:"false"
  end
end
