class ShopStylistWorkdaysController < ApplicationController
  before_action :set_shop_stylist_workday, only: [:show, :edit, :update, :destroy]

  # GET /shop_stylist_workdays
  # GET /shop_stylist_workdays.json
  def index
    @shop_stylist_workdays = ShopStylistWorkday.all
  end

  # GET /shop_stylist_workdays/1
  # GET /shop_stylist_workdays/1.json
  def show
  end

  # GET /shop_stylist_workdays/new
  def new
    @shop_stylist_workday = ShopStylistWorkday.new
  end

  # GET /shop_stylist_workdays/1/edit
  def edit
  end

  # POST /shop_stylist_workdays
  # POST /shop_stylist_workdays.json
  def create
    @shop_stylist_workday = ShopStylistWorkday.new(shop_stylist_workday_params)

    respond_to do |format|
      if @shop_stylist_workday.save
        format.html { redirect_to @shop_stylist_workday, notice: 'Shop stylist workday was successfully created.' }
        format.json { render :show, status: :created, location: @shop_stylist_workday }
      else
        format.html { render :new }
        format.json { render json: @shop_stylist_workday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_stylist_workdays/1
  # PATCH/PUT /shop_stylist_workdays/1.json
  def update
    respond_to do |format|
      if @shop_stylist_workday.update(shop_stylist_workday_params)
        format.html { redirect_to @shop_stylist_workday, notice: 'Shop stylist workday was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_stylist_workday }
      else
        format.html { render :edit }
        format.json { render json: @shop_stylist_workday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_stylist_workdays/1
  # DELETE /shop_stylist_workdays/1.json
  def destroy
    @shop_stylist_workday.destroy
    respond_to do |format|
      format.html { redirect_to shop_stylist_workdays_url, notice: 'Shop stylist workday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_stylist_workday
      @shop_stylist_workday = ShopStylistWorkday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_stylist_workday_params
      params.require(:shop_stylist_workday).permit(:shop_id, :stylist_id, :day, :start_time, :end_time, :working, :effective_date, :end_date)
    end
end
