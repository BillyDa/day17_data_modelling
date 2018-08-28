room = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

room_201 = room[:data][:rooms][0][:capacity]
p room_201

room[:data][:events].each do |num|
  if num[:room_id] == 1 && num[:attendees] <= 50
    p "ok"
  elsif num[:room_id] == 2 && num[:attendees] <= 200
    p "ok"
  elsif num[:room_id] == 3 && num[:attendees] <= 100
    p "ok"
  else
    p "Will not fit"
  end
end
  
