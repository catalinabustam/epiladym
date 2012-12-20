class AddDislobulo2AndDislobulo3AndDislobulo4AndDishemisferio2ToDisplasia < ActiveRecord::Migration
  def change
    add_column :displasia, :dislobulo2, :string
    add_column :displasia, :dislobulo3, :string
    add_column :displasia, :dislobulo4, :string
    add_column :displasia, :dishemisferio2, :string
  end
end
