class CalendarBookingsController < ApplicationController
  before_action :set_calendar_booking, only: [:show, :edit, :update, :destroy]

  # GET /calendar_bookings
  # GET /calendar_bookings.json
  def index
    @calendar_bookings = CalendarBooking.all
  end

  # GET /calendar_bookings/1
  # GET /calendar_bookings/1.json
  def show
  end

  # GET /calendar_bookings/new
  def new
    @calendar_booking = CalendarBooking.new
  end

  # GET /calendar_bookings/1/edit
  def edit
  end

  # POST /calendar_bookings
  # POST /calendar_bookings.json
  def create
    @calendar_booking = CalendarBooking.new(calendar_booking_params)

    respond_to do |format|
      if @calendar_booking.save
        format.html { redirect_to @calendar_booking, notice: 'Calendar booking was successfully created.' }
        format.json { render :show, status: :created, location: @calendar_booking }
      else
        format.html { render :new }
        format.json { render json: @calendar_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_bookings/1
  # PATCH/PUT /calendar_bookings/1.json
  def update
    respond_to do |format|
      if @calendar_booking.update(calendar_booking_params)
        format.html { redirect_to @calendar_booking, notice: 'Calendar booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar_booking }
      else
        format.html { render :edit }
        format.json { render json: @calendar_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_bookings/1
  # DELETE /calendar_bookings/1.json
  def destroy
    @calendar_booking.destroy
    respond_to do |format|
      format.html { redirect_to calendar_bookings_url, notice: 'Calendar booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_booking
      @calendar_booking = CalendarBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_booking_params
      params.require(:calendar_booking).permit(:booking_id, :shop_calendar_id, :occupy_chair)
    end
end
