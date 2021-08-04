class API

def self.create_country
response = RestClient.get('https://restcountries.eu/rest/v2/all')
country_details_hash = JSON.parse(response.body, symbolize_names: true)
country_details_hash.collect do |country|
    Country.new(country)
end
end





end
