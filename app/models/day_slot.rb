class ShopDayBook
  attr_accessor   :name
  attr_accessor   :day
  attr_accessor   :shop_id
  attr_accessor   :stylistdays
  attr_accessor   :shop
  def initialize (shop, day)
    @shop = shop
    @name = shop.name
    @day = day.to_s(:db)
    @shop_id = shop.id
    load_stylistdays(@day)
  end

  def load_stylistdays(day)
    @stylistdays = Array.new

    @shop.shop_stylists.each do |stylist|
      stylist_day = StylistDay.new(stylist, @day)
      @stylistdays.push(stylist_day)
    end

  end
end


class StylistDay
  attr_accessor :name
  attr_accessor :day
  attr_accessor :stylist_id
  attr_accessor :image_url
  attr_accessor :dayslots
  attr_accessor :stylist
  def initialize (stylist, day)
    @stylist = stylist
    @name = stylist.name
    @day = day.to_s
    @stylist_id = stylist_id
    @image_url = stylist.image_url
    load_slots()
  end
  def load_slots()
    start_date = DateTime.parse(@day).beginning_of_day.to_s(:db)
    end_date = DateTime.parse(@day).end_of_day.to_s(:db)
    search_str = "shop_id = "
    search_str += shop_id.to_s
    search_str += " AND stylist_id ="
    search_str += @stylist_id.to_s
    search_str += " AND slot_start >= Datetime('"
    search_str += start_date
    search_str += "') AND slot_end <= Datetime('"
    search_str += end_date + "')"
     #
    # load all the empty slots
    #
    @dayslots = Array.new
    last_id = 0
    ShopCalendar.where(search_str).find_each do |slot|
      #
      # if the slot is in the Calendar Bookings table, it means there is a booking for this slot
      #
      booking = CalendarBooking.find_by(shop_calendar_id:slot.id)
      if (booking) then
        if last_id == booking.booking_id then
          # ignore if we already created the booking slot
        else
          # create a new booking slot
          slot = CalendarSlot.new(booking.booking_id,"Booked")
          @dayslots.push(slot)
          last_id = booking.booking_id
        end
      else
        slot = CalendarSlot.new(slot.id,'Empty slot')
        @dayslots.push(slot)
      end
    end
  end
end


class CalendarSlot
  attr_accessor :slot_start
  attr_accessor :slot_id
  attr_accessor :duration
  attr_accessor :client_name
  attr_accessor :client_contact_no
  attr_accessor :client_id
  attr_accessor :service_name
  attr_accessor :slot_end
  attr_accessor :slot_type
  def initialize(slot_id, slot_type )
    @slot_type = slot_type
    @slot_id = slot_id
    if slot_type == "Empty slot" then
      slot = ShopCalendar.find(slot_id)
      @slot_start = slot.slot_start.to_s(:db)
      @duration = slot.duration
      @slot_end = slot.slot_end.to_s(:db)

    elsif slot_type == "Not Available" then


    elsif slot_type == "Booked" then
      slot = Booking.find(slot_id)
      client = slot.client
      service = slot.service
      @slot_start = slot.date.to_s(:db)
      @duration = service.duration
      @client_name = client.firstName + " " + client.lastName
      @client_contact_no = client.contactNo
      @client_id = client.id
      @service_name = service.name
      @slot_end = (slot.date + service.duration.minutes).to_s(:db)

    end


  end
end