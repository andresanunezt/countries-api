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

# def self.country_details(country)

#     Country.all.each do |countries|
#         if country == countries.name && countries.continent == "Americas"
#         puts "#{countries.name}".colorize(:light_magenta)
#         puts "#{countries.name} is a country in the #{countries.continent}. It has a population of #{countries.population}.".colorize(:green)
#         puts "Details: ".colorize(:light_magenta)
#         puts "Language: #{countries.language}".colorize(:green)
#         puts "Capital: #{countries.capital}".colorize(:green)
#         puts "Native Name: #{countries.native_name}".colorize(:green)
#         puts "Region: #{countries.subregion}".colorize(:green)
#         puts "Currency: #{countries.currency}".colorize(:green)
#         elsif country == countries.name && countries.continent != "Americas"
#             puts "#{countries.name}".colorize(:light_magenta)
#             puts "#{countries.name} is a country in #{countries.continent}. It has a population of #{countries.population}.".colorize(:green)
#             puts "Details: ".colorize(:light_magenta)
#             puts "Language: #{countries.language}".colorize(:green)
#             puts "Capital: #{countries.capital}".colorize(:green)
#             puts "Native Name: #{countries.native_name}".colorize(:green)
#             puts "Region: #{countries.subregion}".colorize(:green)
#             puts "Currency: #{countries.currency}".colorize(:green)
#      end
#     end
# end


# def self.ASCCI
# puts "
# .. . . . . . . . . . . . . . . . . . . . . . . . . . . . .
# .. . . . . . . .#######. . . . . . . . . . . . . . . . . .
# .. . . . . . .#. .#### . . . ####. . .###############. . .
# .. . ########. ##. ##. . . ######################### . . .
# .. . . ##########. . . . ######################. . . . . .
# .. . . .######## . . . .   ################### . . . . . .
# .. . . . ### .   . . . .#####. ##############. # . . . . .
# .. . . . . ##### . . . .#######. ##########. . . . . . . .
# .. . . . . .###### . . . .#### . . . . .## . . . . . . . .
# .. . . . . . ##### . . . .#### # . . . . . ##### . . . . .
# .. . . . . . ### . . . . . ##. . . . . . . . ### .#. . . .
# .. . . . . . ##. . . . . . . . . . . . . . . . . . . . . .
# .. . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    
# ".colorize(:green)

# puts "-----------------------------------------"
# end


end


def self.sort_by_population
Country.all.sort_by do |country|
country.population
end

end
