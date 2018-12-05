class FixColumnName < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :synth_settings, :type, :oscillator_type
  end
end
