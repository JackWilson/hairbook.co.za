class ShopStylistsController < ApplicationController
  before_action :set_shop_stylist, only: [:show, :edit, :update, :destroy]

  # GET /shop_stylists
  # GET /shop_stylists.json
  def index
    @shop_stylists = ShopStylist.all
  end

  # GET /shop_stylists/1
  # GET /shop_stylists/1.json
  def show
  end

  # GET /shop_stylists/new
  def new
    @shop_stylist = ShopStylist.new
  end

  # GET /shop_stylists/1/edit
  def edit
  end

  # POST /shop_stylists
  # POST /shop_stylists.json
  def create
    @shop_stylist = ShopStylist.new(shop_stylist_params)

    respond_to do |format|
      if @shop_stylist.save
        format.html { redirect_to @shop_stylist, notice: 'Shop stylist was successfully created.' }
        format.json { render :show, status: :created, location: @shop_stylist }
      else
        format.html { render :new }
        format.json { render json: @shop_stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_stylists/1
  # PATCH/PUT /shop_stylists/1.json
  def update
    respond_to do |format|
      if @shop_stylist.update(shop_stylist_params)
        format.html { redirect_to @shop_stylist, notice: 'Shop stylist was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_stylist }
      else
        format.html { render :edit }
        format.json { render json: @shop_stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_stylists/1
  # DELETE /shop_stylists/1.json
  def destroy
    @shop_stylist.destroy
    respond_to do |format|
      format.html { redirect_to shop_stylists_url, notice: 'Shop stylist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_stylist
      @shop_stylist = ShopStylist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_stylist_params
      params.require(:shop_stylist).permit(:shop_id, :stylist_id, :start_date, :end_date, :status)
    end
end
