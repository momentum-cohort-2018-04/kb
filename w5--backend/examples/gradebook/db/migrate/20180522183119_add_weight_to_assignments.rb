class AddWeightToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :weight, :integer, default: 1, null: false
  end
end
