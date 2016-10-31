class ShopSettingsController < ApplicationController
  before_action :set_shop_setting, only: [:show, :edit, :update, :destroy]

  # GET /shop_settings
  # GET /shop_settings.json
  def index
    @shop_settings = ShopSetting.all
  end

  # GET /shop_settings/1
  # GET /shop_settings/1.json
  def show
  end

  # GET /shop_settings/new
  def new
    @shop_setting = ShopSetting.new
  end

  # GET /shop_settings/1/edit
  def edit
  end

  # POST /shop_settings
  # POST /shop_settings.json
  def create
    @shop_setting = ShopSetting.new(shop_setting_params)

    respond_to do |format|
      if @shop_setting.save
        format.html { redirect_to @shop_setting, notice: 'Shop setting was successfully created.' }
        format.json { render :show, status: :created, location: @shop_setting }
      else
        format.html { render :new }
        format.json { render json: @shop_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_settings/1
  # PATCH/PUT /shop_settings/1.json
  def update
    respond_to do |format|
      if @shop_setting.update(shop_setting_params)
        format.html { redirect_to @shop_setting, notice: 'Shop setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_setting }
      else
        format.html { render :edit }
        format.json { render json: @shop_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_settings/1
  # DELETE /shop_settings/1.json
  def destroy
    @shop_setting.destroy
    respond_to do |format|
      format.html { redirect_to shop_settings_url, notice: 'Shop setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_setting
      @shop_setting = ShopSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_setting_params
      params.require(:shop_setting).permit(:calender_slot_size, :days_ahead_calender, :shop_id, :start_date)
    end
end
