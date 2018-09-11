class Bear

attr_reader :name

def initialize(name, type)
  @name = name
  @stomach = []
end

def fishes_eaten
  return @stomach
end

def stomach_contents
  return @stomach.count
end

def eat_fish(fish)
  @stomach << fish
end

def roar
  return "RRRRROOOOOAAAAAARRRRR!!!!!"
end




#this is the end
end
