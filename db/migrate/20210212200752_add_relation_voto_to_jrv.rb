class AddRelationVotoToJrv < ActiveRecord::Migration[6.1]
  def change
    add_reference :jrvs, :voto, foreign_key: true
  end
end
