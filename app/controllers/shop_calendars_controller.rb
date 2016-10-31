class ShopCalendarsController < ApplicationController
  before_action :set_shop_calendar, only: [:show, :edit, :update, :destroy]

  # GET /shop_calendars
  # GET /shop_calendars.json
  def index
    @shop_calendars = ShopCalendar.all
  end

  # GET /shop_calendars/1
  # GET /shop_calendars/1.json
  def show
  end

  # GET /shop_calendars/new
  def new
    @shop_calendar = ShopCalendar.new
  end

  # GET /shop_calendars/1/edit
  def edit
  end

  # POST /shop_calendars
  # POST /shop_calendars.json
  def create
    @shop_calendar = ShopCalendar.new(shop_calendar_params)

    respond_to do |format|
      if @shop_calendar.save
        format.html { redirect_to @shop_calendar, notice: 'Shop calendar was successfully created.' }
        format.json { render :show, status: :created, location: @shop_calendar }
      else
        format.html { render :new }
        format.json { render json: @shop_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_calendars/1
  # PATCH/PUT /shop_calendars/1.json
  def update
    respond_to do |format|
      if @shop_calendar.update(shop_calendar_params)
        format.html { redirect_to @shop_calendar, notice: 'Shop calendar was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_calendar }
      else
        format.html { render :edit }
        format.json { render json: @shop_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_calendars/1
  # DELETE /shop_calendars/1.json
  def destroy
    @shop_calendar.destroy
    respond_to do |format|
      format.html { redirect_to shop_calendars_url, notice: 'Shop calendar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_calendar
      @shop_calendar = ShopCalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_calendar_params
      params.require(:shop_calendar).permit(:shop_id, :stylist_id, :slot_start, :duration, :slot_end, :available)
    end
end
