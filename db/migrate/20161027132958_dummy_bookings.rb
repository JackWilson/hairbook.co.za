class DummyBookings < ActiveRecord::Migration[5.0]
  #
  # Create data for bookings that can be used during development
  # randomly generate booking entries for each stylist
  #
  def up
    # setup the default start time from which to index teh start data
    start = DateTime.new(2016,11,01, 7,0)

    Stylist.all.each do |stylist|
        # get the clients
        clients = Client.where(stylist_id: stylist.id)
        # now select a random client from this array
        client = clients[rand(clients.size)]
        # Select a random service from the service table
        service = Service.find(1+rand(6))
        # set a random booking start time by adding a random number of half hours to teh default start time
        startTime = start + (rand(20) * 0.5*60).minutes
        # Now create a new booking entry and fill in the fields
        item = stylist.bookings.build(client_id: client.id, service_id: service.id)
        item.date = startTime
        item.status = "new"
        item.save!

    end

  end
end
