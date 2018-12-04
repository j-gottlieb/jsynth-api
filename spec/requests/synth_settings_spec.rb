require 'rails_helper'

RSpec.describe "SynthSettings", type: :request do
  describe "GET /synth_settings" do
    it "works! (now write some real specs)" do
      get synth_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
