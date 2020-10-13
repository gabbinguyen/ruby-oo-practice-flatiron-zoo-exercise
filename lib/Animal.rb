class Animal
    attr_accessor :species, :weight, :nickname
    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def zoo
        zoo.name
    end

    def self.find_by_species(species)
        all.select do |animal|
            animal.species == species
        end 
    end

end
