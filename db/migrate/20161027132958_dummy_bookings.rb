class DummyBookings < ActiveRecord::Migration[5.0]
  #
  # Create data for bookings that can be used during development
  # randomly generate booking entries for each stylist
  #
  def up
    # setup the default start time from which to index teh start data
    start = DateTime.new(2016,11,01, 7,0)

    Stylist.all.each do |stylist|

      # we set the initial start time forward by up to 4 half hours
      startTime = start + (rand(4) * 0.5*60).minutes

        # we want to create some entries for today that makes sense
        # we will pick the clients, and then make service bookings for them

        # get the clients
      clients = Client.where(stylist_id: stylist.id)
      clients.each do |client|
          # now select a random client from this array
          # client = clients[rand(clients.size)]

          # new random implementation
          # we check a flag of 0,1,2 and if 0 or 1 ignore the client for this day
          if rand(3) > 1 then
            # Select a random service from the service table
            service = Service.find(1+rand(6))

            # # set a random booking start time by adding a random number of half hours to teh default start time
            # # startTime = start + (rand(20) * 0.5*60).minutes

            # Now create a new booking entry and fill in the fields
            item = stylist.bookings.build(client_id: client.id, service_id: service.id)
            item.date = startTime
            item.status = "new"
            item.save!

            # now move teh startTime further ahead by up to 1 hour
            startTime = startTime + service.duration.minutes + (rand(3) * 0.5*60).minutes

          end
        end

    end

  end
  def down
    # clear out the bookings

    Booking.all.each do |booking|
      booking.destroy
    end
  end
end
