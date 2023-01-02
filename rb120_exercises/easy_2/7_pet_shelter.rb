class Pet
  attr_reader :animal, :name
  
  def initialize(animal, name)
    @animal = animal
    @name = name
  end
  
  def to_s
    "a #{animal} named #{name}"
  end
end

# we start by defining our Pet class with an initialize method that takes two arguments, type and name, and getter methods so that we can retrieve these names. We also provide a to_s method to override so we can convert Pet objects into meaningful strings; this will be useful from Owner#print_pets

class Owner
  attr_reader :name, :pets
  
  def initialize(name)
    @name = name
    @pets = []
  end
  
  def add_pet(pet)
    @pets << pet
  end
  
  def number_of_pets
    pets.size
  end
  
  def print_pets
    puts pets
  end
end

# here, this class only needs to support two methods - #initialize and #number_of_pets. since #number_of_pets is going to be an Owner instance method, we decide that we will also store a list of each owner's adopted pets in the Owner object. so we initialize @pets, add a getter method for @pets, and a method add_pet to add a newly adopted pet to the owner record. Finally, we will also need a print_pets method so we can print the list of the owner's pets

class Shelter
  def initialize
    @owners = {}
  end
  
  def adopt(owner, pet) # when adopted, add 1 to number_of_pets
    owner.add_pet(pet)
    @owners[owner.name] ||= owner # only if owner is not already listed -- new syntax!!! if a is nil, it goes to b
  end
  
  def print_adoptions
    @owners.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.print_pets
      puts
    end
  end
end

# the Shelter class needs #initialize, #adopt, and #print_adoptions methods to match the example code. The adopt method adds a new pet to the owner record, and then adds the owner record to our @owners instance hash, but only if the owner is NOT already listed

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# this demonstrates collaborator objects; the Pet class has two String collaborator objects, the Owner has a String and an Array of Pet objects, and Shelter has a Hash of Owner objects

# further reading on a ||= b; acts like a || a = b
# http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html
# https://medium.com/@jaredrayjohnson1/ruby-operators-double-pipe-equals-bfcbe21a7177

# redone (12/18)
class Pet
  def initialize(animal, name)
    @animal = animal
    @name = name
  end
  
  def to_s
    "a #{@animal} named #{@name}"
  end
end

class Owner
  attr_reader :name, :pets
  
  def initialize(name)
    @name = name
    @pets = [] # push each adopted pet here
  end
  
  def add_pet(pet) # pet is a Pet object
    pets << pet
  end
  
  def number_of_pets
    pets.size
  end
end

class Shelter
  # how do we want to handle the list of owners and pets adopted?
  def initialize
    @owners = {} # key is owner's name, value is owner that contains the pets list realtime
  end

  def adopt(owner, pet)
    # owner is an Owner object
    # pet is a Pet object
    owner.add_pet(pet)
    @owners[owner.name] ||= owner
  end
  
  def print_adoptions
    # prints the owner name and pets the owner adopted
    @owners.each do |owner_name, owner|
      puts "#{owner_name} adopted following pets:"
      puts owner.pets
      puts
    end
  end
end