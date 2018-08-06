class CreateMinuta < ActiveRecord::Migration[5.1]
  def change
    create_table :minuta do |t|
      t.string :fecha
      t.string :inicio
      t.string :final
      t.string :fw
      t.string :nombre
      t.string :fechaProximaReunion
      t.string :organizador
      t.string :secretario
      t.string :userId
      t.string :token

      t.timestamps
    end
  end
end
