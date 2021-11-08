class AddSalaryToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :salary, :integer
  end
end
