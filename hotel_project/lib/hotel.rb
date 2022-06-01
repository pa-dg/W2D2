require_relative "room"

class Hotel
    def initialize(name, capacities)
        @name = name
        @rooms = {}

        capacities.each { |room, capacity| @rooms[room] = Room.new(capacity) }
    end
    
    def name
        @name.split.map(&:capitalize).join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(room_name)
        return true if @rooms[room_name] != nil

        false
    end

    def check_in(person, room_name)
        if room_exists?(room_name) 
            if @rooms[room_name].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        else
            puts "sorry, room does not exist"
        end
        
    end

    def has_vacancy?
        if @rooms.values.any? { |room_cap| room_cap.available_space > 0 }
            puts "check in successful"
            return true
        end
        
        false
    end

    def list_rooms
        @rooms.each do |room_name, room|
            puts "#{room_name}=> #{room.available_space}"
        end

    end
end
