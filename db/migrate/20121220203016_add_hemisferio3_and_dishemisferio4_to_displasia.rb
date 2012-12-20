class AddHemisferio3AndDishemisferio4ToDisplasia < ActiveRecord::Migration
  def change
    add_column :displasia, :dishemisferio3, :string
    add_column :displasia, :dishemisferio4, :string
  end
end
