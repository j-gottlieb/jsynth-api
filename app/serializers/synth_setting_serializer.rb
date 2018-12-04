class SynthSettingSerializer < ActiveModel::Serializer
  attributes :id, :name, :chorusrate, :chorustoggle, :filtercutoff, :filtertoggle
end
