class CreateDepartamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :departamentos do |t|
      t.string :name
      t.integer :junta
      
      t.timestamps
    end
  end
end
