# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :synth_settings
end
