class CreateVotos < ActiveRecord::Migration[6.1]
  def change
    create_table :votos do |t|
      t.string :partido
      t.integer :enteros
      t.float :fraccionados, precision: 3, scale: 8
      t.float :total, precision: 3, scale: 8

      t.timestamps
    end
  end
end
