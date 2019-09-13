# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  return names.collect { |name| badge_maker(name) }
end

def assign_rooms(names)
  room_assignments = []
  names.each_with_index { |name, index| room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!" }
  return room_assignments
end

def printer(names)
  rooms = assign_rooms(names)
  
  batch_badge_creator(names).each_with_index do |badge, index|
    puts badge
    puts rooms[index]
  end
end
