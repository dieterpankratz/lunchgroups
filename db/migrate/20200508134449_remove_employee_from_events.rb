class RemoveEmployeeFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :employee, :string
  end
end
