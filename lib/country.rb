class Country
attr_accessor :name, :continent, :continent, :capital, :language, :population, :native_name, :subregion, :currency

@@all = []

def initialize(country)
@name = country[:name]
@continent = country[:region]
@language = country[:languages].join(", ")
@capital = country[:capital]
@population = country[:population]
@native_name = country[:nativeName]
@subregion = country[:subregion]
@currency = country[:currencies].join(",")
@@all << self
end

def self.all
@@all
end

end