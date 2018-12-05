class SynthSettingSerializer < ActiveModel::Serializer
  attributes :id, :name, :oscillator_type, :chorusrate, :chorustoggle, :filtercutoff, :filtertoggle
end
