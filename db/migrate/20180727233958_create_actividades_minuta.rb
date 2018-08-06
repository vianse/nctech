class CreateActividadesMinuta < ActiveRecord::Migration[5.1]
  def change
    create_table :actividades_minuta do |t|
      t.string :minutaToken
      t.string :responsable
      t.string :asunto
      t.text :actividad
      t.string :coResponsable
      t.string :fechaCompromiso
      t.string :userid

      t.timestamps
    end
  end
end
