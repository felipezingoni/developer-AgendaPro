class AddAgeToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :age, :integer
  end
end
