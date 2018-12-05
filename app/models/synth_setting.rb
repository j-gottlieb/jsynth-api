class SynthSetting < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :name, scope: :user_id
end
