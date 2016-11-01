class DayBookController < ApplicationController
  def index
    shop = Shop.find_by(name: "Head Boys - Brooklyn")
    #
    # Get the open and close times for teh shop for the day
    #
    shop_workday = shop.shop_workdays.find_by(day: 'Tuesday')
    @shop_start = shop_workday.start_time.seconds_since_midnight.seconds
    @shop_close = shop_workday.close_time.seconds_since_midnight.seconds
    #
    # Get the default slot size for the shop
    #
    @shop_slot_size = shop.shop_settings.first.calender_slot_size
    #
    # Build a collection of slot times that can be used for the slot row titles
    # We do not want to destruct the start time instance variable
    #
    start_time = @shop_start
    @slot_times = []
    while start_time < @shop_close
      #
      # format the time as a string as it is a title ***********************
      #
      time_entry = (DateTime.parse("2016-11-02 00:00:00") + start_time.seconds).localtime.strftime("%I:%M%p")
      @slot_times.append time_entry
      start_time += @shop_slot_size.minutes
    end
    #
    start_date = "'2016-11-02 00:00:00'"
    end_date = "'2016-11-02 23:59:00'"
    search_str = "shop_id = "
    search_str += shop.id.to_s
    search_str += " AND slot_start >= "
    search_str += start_date
    search_str += " AND slot_end <= "
    search_str += end_date
    @dayentries = ShopCalendar.where(search_str).order(:stylist_id, :slot_start)
    #
    # We need to check if there are any bookings beyond the day start and close times
    #
    @first_slot_start = @dayentries.order(:slot_start).first
    @last_slot_start = @dayentries.order(:slot_start).last
    #
    #

  end
end
