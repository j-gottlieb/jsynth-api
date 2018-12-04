class AddUserToSynthSettings < ActiveRecord::Migration[5.2]
  def change
    add_reference :synth_settings, :user, foreign_key: true
  end
end
