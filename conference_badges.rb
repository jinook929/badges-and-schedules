# Write your code here.
speakers = ["Tom", "John", "Wall"]

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    badge_messages = []
    names.each{|name|
        badge_messages.push(badge_maker(name))
    }
    return badge_messages
end

def assign_rooms(names)
    room_assignments = []
    names.each_with_index{|speaker, index|
        room_assignments.push("Hello, #{speaker}! You'll be assigned to room #{index + 1}!")
    }
    return room_assignments
end

def printer(names)
    batch_badge_creator(names).each{|badge|
        puts badge
    }
    assign_rooms(names).each{|assignment|
        puts assignment
    }
end

# printer(speakers)
# puts assign_rooms(speakers)
# puts speakers