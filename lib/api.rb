class API

def self.create_country
response = RestClient.get('https://restcountries.eu/rest/v2/all')
country_details_array = JSON.parse(response.body, symbolize_names: true)
# binding.pry
country_details_array.collect do |country|
    Country.new(country)
    #  binding.pry
end
end

# def self.country_details(country)

#     Country.all.each do |countries|
#         if country == countries.name && countries.continent == "Americas"
#         puts "#{countries.name}".colorize(:light_magenta)
#         puts "#{countries.name} is a country in the #{countries.continent}. It has a population of #{countries.population}.".colorize(:green)
#         puts "Details: ".colorize(:light_magenta)
#         puts "Language(s): #{countries.language}".colorize(:green)
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



end