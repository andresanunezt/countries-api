class API

def self.create_country
# url = URI("https://restcountries-v1.p.rapidapi.com/all")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-key"] = '63d21f711cmshabebeea8db2f824p1e8794jsn6066c0793ff2'
# request["x-rapidapi-host"] = 'restcountries-v1.p.rapidapi.com'
# response = http.request(request)
response = RestClient.get('https://restcountries.eu/rest/v2/all')
country_details_array = JSON.parse(response.body, symbolize_names: true)
# binding.pry
country_details_array.collect do |country|
    Country.new(country)
    #  binding.pry
end
end

def self.country_details(country)

    Country.all.each do |countries|
        if country == countries.name && countries.continent == "Americas"
        puts "#{countries.name} is a country in the #{countries.continent}. It has a population of #{countries.population}.".colorize(:green)
        puts "Language(s): #{countries.language}".colorize(:green)
        puts "Capital: #{countries.capital}".colorize(:green)
        puts "Native Name: #{countries.native_name}".colorize(:green)
        puts "Subregion: #{countries.subregion}".colorize(:green)
        puts "Currency: #{countries.currency}".colorize(:green)
        elsif country == countries.name && countries.continent != "Americas"
            puts "#{countries.name} is a country in #{countries.continent}. It has a population of #{countries.population}.".colorize(:green)
            puts "Language(s): #{countries.language}".colorize(:green)
            puts "Capital: #{countries.capital}".colorize(:green)
            puts "Native Name: #{countries.native_name}".colorize(:green)
            puts "Subregion: #{countries.subregion}".colorize(:green)
            puts "Currency: #{countries.currency}".colorize(:green)
     end
    end
end

end