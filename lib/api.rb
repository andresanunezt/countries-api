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

end