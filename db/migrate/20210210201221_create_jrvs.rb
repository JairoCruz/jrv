class CreateJrvs < ActiveRecord::Migration[6.1]
  def change
    create_table :jrvs do |t|
      t.string :partido
      t.integer :enteros
      t.float :fraccionados, precision: 3, scale: 8
      t.float :total, precision: 3, scale: 8
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
