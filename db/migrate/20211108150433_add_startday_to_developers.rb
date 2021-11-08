class AddStartdayToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :startday, :datetime
  end
end
