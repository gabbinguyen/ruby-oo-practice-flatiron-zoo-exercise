class Zoo
    attr_accessor :name, :location
    @@all = [] 
    
    def initialize(name, location)
        @name = name
        @location = location
        @animals = []
        @@all << self 
    end

    def self.all
        @@all
    end

    def add_animals(animal)
        @animals << animal
    end

    def animals 
        @animals
    end

    def animal_species
        animals.map do |animal| 
            animal.species       
        end.uniq
    end

    def find_by_species(species)
        animals.select do |animal|
          if animal.species == species
            animal
          end
        end
    end

    def animal_nicknames
        animals.map do |animal| 
            animal.nickname
        end
    end

    def self.find_by_location(location)
        all.select do |zoo| 
            zoo.location == location
        end
    end

end
