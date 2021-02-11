class CreateJrvs < ActiveRecord::Migration[6.1]
  def change
    create_table :jrvs do |t|
      t.integer :junta
      t.text :municipio
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
