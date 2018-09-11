class River

attr_reader :name

def initialize(name, fish_stock)
  @name = name
  @fish_stock = fish_stock
end

def fish_register()
  return @fish_stock
end

def fishes_in_the_river
  return @fish_stock.count
  # return fish_register.count
end

def eaten_by_bear(fish)
  return @fish_stock.delete("Trout")
end

# def collect_passengers_from_bus(bus)
#     for person in bus.passengers
#       queue.push(person)
#     end
#     bus.passengers = []
#   end










#this is the end
end
