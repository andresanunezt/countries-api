class CLI

def run
    puts "Welcome to the Country Selector".colorize(:red)
    puts "The World is At Your Fingertips!".colorize(:red)
    sleep 2
    API.create_country
    list_countries
    menu
    
end

def list_countries
    Country.all.each.with_index(1) do | country, i |
        puts "#{i}. #{country.name}".colorize(:yellow)
    end
end

def menu
    puts "Please select a number between 1 and #{Country.all.size} to see more information:".colorize(:red)
    input = gets.chomp
    if !input.to_i.between?(1, Country.all.count)
        list_countries
        menu
    else
        country = Country.all[input.to_i-1].name
        API.country_details(country)
    end
    
end



end