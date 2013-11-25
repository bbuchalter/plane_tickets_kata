class PlaneTickets
  def get_journey(departure_ids, destination_ids)
    destination_for = map_departures_to_destinations(departure_ids, destination_ids)

    next_departure = (departure_ids - destination_ids).first

    while next_departure
      puts next_departure

      last_departure = next_departure
      next_departure = destination_for[next_departure]
    end

    puts destination_for[last_departure]
  end

  def map_departures_to_destinations(departure_ids, destination_ids)
    destination_for = {}
    departure_ids.each_with_index do |departure_id, i|
      destination_for[departure_id] = destination_ids[i]
    end
    destination_for
  end
end