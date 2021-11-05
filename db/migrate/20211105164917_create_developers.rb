class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :position
      t.string :description
      t.integer :level

      t.timestamps
    end
  end
end
