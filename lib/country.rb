class Country
attr_accessor :name, :continent, :continent, :capital, :language, :population, :native_name, :subregion, :currency

@@all = []

def initialize(country)
@name = country[:name]
@continent = country[:region]
@language = country[:languages][0][:name]
@capital = country[:capital]
@population = country[:population]
@native_name = country[:nativeName]
@subregion = country[:subregion]
@currency = country[:currencies][0][:name]
@@all << self
end

def self.all
@@all
end

end