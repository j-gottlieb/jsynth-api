class SynthSettingsController < ProtectedController
  before_action :set_synth_setting, only: [:show, :update, :destroy]

  # GET /synth_settings
  def index
    @synth_settings = current_user.synth

    render json: @synth_settings
  end

  # GET /synth_settings/1
  def show
    render json: @synth_setting
  end

  # POST /synth_settings
  def create
    @synth_setting = SynthSetting.new(synth_setting_params)

    if @synth_setting.save
      render json: @synth_setting, status: :created, location: @synth_setting
    else
      render json: @synth_setting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /synth_settings/1
  def update
    if @synth_setting.update(synth_setting_params)
      render json: @synth_setting
    else
      render json: @synth_setting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /synth_settings/1
  def destroy
    @synth_setting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_synth_setting
      @synth_setting = SynthSetting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def synth_setting_params
      params.require(:synth_setting).permit(:name, :chorusrate, :chorustoggle, :filtercutoff, :filtertoggle)
    end
end
