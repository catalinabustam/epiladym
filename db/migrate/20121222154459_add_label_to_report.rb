class AddLabelToReport < ActiveRecord::Migration
  def change
    add_column :reports, :label, :string
  end
end
