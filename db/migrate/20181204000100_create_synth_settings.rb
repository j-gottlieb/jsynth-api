class CreateSynthSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :synth_settings do |t|
      t.string :name
      t.float :chorusrate
      t.boolean :chorustoggle
      t.float :filtercutoff
      t.boolean :filtertoggle

      t.timestamps
    end
  end
end
