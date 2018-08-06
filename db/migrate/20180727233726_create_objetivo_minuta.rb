class CreateObjetivoMinuta < ActiveRecord::Migration[5.1]
  def change
    create_table :objetivo_minuta do |t|
      t.string :minutaToken
      t.text :objetivo
      t.string :fechaRevision
      t.string :userid

      t.timestamps
    end
  end
end
