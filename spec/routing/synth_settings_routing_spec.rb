require "rails_helper"

RSpec.describe SynthSettingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/synth_settings").to route_to("synth_settings#index")
    end


    it "routes to #show" do
      expect(:get => "/synth_settings/1").to route_to("synth_settings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/synth_settings").to route_to("synth_settings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/synth_settings/1").to route_to("synth_settings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/synth_settings/1").to route_to("synth_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/synth_settings/1").to route_to("synth_settings#destroy", :id => "1")
    end

  end
end
