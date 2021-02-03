# Write your code here.
def badge_maker(name)
    return "Hello, my name is " + name + "."
end

def batch_badge_creator(attendees)
    badge_messages = []
    attendees.each do |name|
        badge_messages << badge_maker(name)
    end
    return badge_messages
end

def assign_rooms(speakers)
    speakers_list = []
    speakers.each.with_index(1) do |speaker, index|
        speakers_list << "Hello, #{speaker}! You'll be assigned to room #{index}!"
    end
    return speakers_list
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    rooms = assign_rooms(attendees)
    badges.each do |badge_to_print|
        puts badge_to_print
    end
    rooms.each do |rooms_to_print|
        puts rooms_to_print
    end
end
