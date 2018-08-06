class CreateParticipantesMinuta < ActiveRecord::Migration[5.1]
  def change
    create_table :participantes_minuta do |t|
      t.string :minutaToken
      t.string :nombre
      t.string :puesto
      t.string :asistencia
      t.string :userid

      t.timestamps
    end
  end
end
