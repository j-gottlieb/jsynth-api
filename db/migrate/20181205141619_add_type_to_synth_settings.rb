class AddTypeToSynthSettings < ActiveRecord::Migration[5.2]
  def change
    add_column :synth_settings, :type, :string
  end
end
