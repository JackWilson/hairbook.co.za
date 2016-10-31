class ShopWorkdaysController < ApplicationController
  before_action :set_shop_workday, only: [:show, :edit, :update, :destroy]

  # GET /shop_workdays
  # GET /shop_workdays.json
  def index
    @shop_workdays = ShopWorkday.all
  end

  # GET /shop_workdays/1
  # GET /shop_workdays/1.json
  def show
  end

  # GET /shop_workdays/new
  def new
    @shop_workday = ShopWorkday.new
  end

  # GET /shop_workdays/1/edit
  def edit
  end

  # POST /shop_workdays
  # POST /shop_workdays.json
  def create
    @shop_workday = ShopWorkday.new(shop_workday_params)

    respond_to do |format|
      if @shop_workday.save
        format.html { redirect_to @shop_workday, notice: 'Shop workday was successfully created.' }
        format.json { render :show, status: :created, location: @shop_workday }
      else
        format.html { render :new }
        format.json { render json: @shop_workday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_workdays/1
  # PATCH/PUT /shop_workdays/1.json
  def update
    respond_to do |format|
      if @shop_workday.update(shop_workday_params)
        format.html { redirect_to @shop_workday, notice: 'Shop workday was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_workday }
      else
        format.html { render :edit }
        format.json { render json: @shop_workday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_workdays/1
  # DELETE /shop_workdays/1.json
  def destroy
    @shop_workday.destroy
    respond_to do |format|
      format.html { redirect_to shop_workdays_url, notice: 'Shop workday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_workday
      @shop_workday = ShopWorkday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_workday_params
      params.require(:shop_workday).permit(:shop_id, :day, :start_time, :close_time, :open)
    end
end
